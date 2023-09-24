import 'package:flutter/material.dart';
import 'package:flutter_androssy/extensions.dart';
import 'package:flutter_androssy/raw.dart';
import 'package:flutter_androssy/widgets.dart';

import 'switch_view.dart';

enum SettingsViewType {
  arrow,
  checkmark,
  switcher,
  none;

  bool get isArrow => this == SettingsViewType.arrow;

  bool get isCheckmark => this == SettingsViewType.checkmark;

  bool get isSwitcher => this == SettingsViewType.switcher;

  bool get isNone => this == SettingsViewType.none;
}

class SettingsView extends YMRView<SettingsViewController> {
  final dynamic icon;
  final String title;
  final String? summary;
  final ViewToggleContent<String>? summaries;
  final ViewToggleContent<String>? status;
  final SettingsViewType type;
  final SettingsIndicatorConfig indicatorConfig;
  final SwitchButtonConfig switchConfig;

  const SettingsView({
    super.key,
    super.activated,
    super.enabled,
    super.rippleColor,
    super.pressedColor,
    this.icon,
    required this.title,
    this.summary,
    this.summaries,
    this.indicatorConfig = const SettingsIndicatorConfig(),
    this.status,
    this.switchConfig = const SwitchButtonConfig(),
    this.type = SettingsViewType.none,

    /// LISTENER & CALLBACKS
    super.onClick,
    super.onToggle,
    super.onActivator,
  });

  @override
  SettingsViewController initController() {
    return SettingsViewController();
  }

  @override
  SettingsViewController attachController(controller) {
    return controller.fromSettingsView(this);
  }

  @override
  Widget? attach(context, controller) {
    var mTT = context.textTheme;

    return Opacity(
      opacity: controller.enabled ? 1 : 0.5,
      child: SettingTile(
        background: Colors.transparent,
        rippleColor: Colors.transparent,
        pressedColor: Colors.transparent,
        padding: const EdgeInsets.only(
          left: 24,
          right: 0,
          top: 16,
          bottom: 16,
        ),
        header: RawTextView(
          text: controller.title,
          textStyle: controller.titleStyle ?? mTT.titleMedium!,
        ),
        body: TextView(
          visibility: controller.summary?.isNotEmpty ?? false,
          text: controller.summary,
          textStyle: controller.summaryStyle ?? mTT.titleSmall!,
        ),
        content: controller.isStatus
            ? Container(
                margin: const EdgeInsets.only(left: 16),
                child: Text(
                  controller.currentStatus,
                ),
              )
            : null,
        leading: IconView(
          visibility: controller.icon != null,
          icon: controller.icon,
          size: context.iconTheme.size ?? 24,
          tint: context.iconTheme.color,
          marginEnd: 24,
        ),
        tailing: SettingsTailingView(controller: controller),
      ),
    );
  }
}

class SettingsTailingView extends StatelessWidget {
  final SettingsViewController controller;

  const SettingsTailingView({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    var type = controller.type;

    if (controller.isIndicatorVisible && !type.isArrow) {
      var config = controller.indicatorConfig;
      var size = config.size ?? 24;
      return Container(
        width: size,
        height: size,
        margin: const EdgeInsets.only(left: 16),
        child: CircularProgressIndicator(
          strokeWidth: config.stroke ?? 2.5,
          color: config.color,
          strokeCap: StrokeCap.round,
        ),
      );
    }

    return Container(
      child: type.isArrow
          ? const SettingsTailingArrow()
          : type.isCheckmark
              ? const SettingsTailingCheckmark()
              : type.isSwitcher
                  ? SettingsTailingSwitch(controller: controller)
                  : null,
    );
  }
}

class SettingsTailingArrow extends StatelessWidget {
  const SettingsTailingArrow({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 26,
      height: 40,
    );
  }
}

class SettingsTailingCheckmark extends StatelessWidget {
  const SettingsTailingCheckmark({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 26,
      height: 40,
    );
  }
}

class SettingsTailingSwitch extends StatelessWidget {
  final SettingsViewController controller;

  const SettingsTailingSwitch({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return SwitchButton(
      value: controller.activated,
      config: controller.switchConfig,
    );
  }
}

class SettingsViewController extends ViewController {
  dynamic icon;
  String? title;
  TextStyle? titleStyle;

  ViewToggleContent<String>? status;
  String? _summary;
  ViewToggleContent<String>? summaries;
  TextStyle? summaryStyle;

  SettingsViewType type = SettingsViewType.none;

  SettingsIndicatorConfig indicatorConfig = const SettingsIndicatorConfig();
  SwitchButtonConfig switchConfig = const SwitchButtonConfig();

  SettingsViewController fromSettingsView(SettingsView view) {
    super.fromView(view);
    title = view.title;
    status = view.status;
    summary = view.summary;
    summaries = view.summaries;
    icon = view.icon;
    type = view.type;
    indicatorConfig = view.indicatorConfig;
    switchConfig = view.switchConfig;
    return this;
  }

  bool get isStatus {
    return currentStatus.isNotEmpty && (type.isNone || type.isArrow);
  }

  String get currentStatus => status?.detect(activated) ?? "";

  String? get summary => summaries?.detect(activated) ?? _summary;

  set summary(String? value) => _summary = value;

  void setSummary(String? value) {
    onNotifyWithCallback(() => summary = value);
  }
}

class SettingsIndicatorConfig {
  final Color? color;
  final double? size;
  final double? stroke;

  const SettingsIndicatorConfig({
    this.color,
    this.size,
    this.stroke,
  });
}