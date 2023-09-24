import 'package:flutter/material.dart';
import 'package:flutter_androssy/extensions.dart';
import 'package:flutter_androssy/widgets.dart';

import '../../../index.dart';

class SettingsPrivacyFragment extends BaseFragment<SettingsPrivacyController> {
  const SettingsPrivacyFragment({
    super.key,
  });

  @override
  SettingsPrivacyController init(context) {
    return SettingsPrivacyController();
  }

  @override
  Widget onCreate(context, controller) {
    return LinearLayout(
      scrollable: true,
      background: context.appBarTheme.backgroundColor,
      children: [
        LinearLayout(
          marginBottom: 1,
          paddingVertical: 4,
          background: context.colorScheme.background,
          children: [
            TextView(
              marginTop: 16,
              paddingHorizontal: 24,
              text: "Who can see my personal info",
              textStyle: context.titleMedium.copyWith(
                color: context.titleSmall.color,
              ),
            ),
            const SettingsView(
              title: "Last seen and online",
              summary: "Everyone",
            ),
            const SettingsView(
              title: "Profile photo",
              summary: "Everyone",
            ),
            const SettingsView(
              title: "About",
              summary: "Everyone",
            ),
            const SettingsView(
              title: "Status",
              summary: "My contacts, sharing to Facebook",
            ),
            SettingsView(
              rippleColor: Colors.white12,
              title: "Read receipts",
              summary:
                  "If turned off, you won't send or receive Read receipts. "
                  "Read receipts are always sent for group chats.",
              onActivator: loader,
              type: SettingsViewType.switcher,
            ),
          ],
        ),
        LinearLayout(
          marginBottom: 1,
          paddingVertical: 4,
          background: context.colorScheme.background,
          children: [
            TextView(
              marginTop: 16,
              paddingHorizontal: 24,
              text: "Disappearing messages",
              textStyle: context.titleMedium.copyWith(
                color: context.titleSmall.color,
              ),
            ),
            SettingsView(
              title: "Default message timer",
              summary:
                  "Start new chats with disappearing messages set to your timer",
              status: const ViewToggleContent(
                active: "On",
                inactive: "Off",
              ),
              onActivator: loader,
            ),
          ],
        ),
      ],
    );
  }

  Future<bool> loader(dynamic a) async {
    return Future.delayed(const Duration(seconds: 3)).then((value) => a);
  }
}
