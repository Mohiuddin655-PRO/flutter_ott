import 'package:app_color/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_androssy/extensions.dart';
import 'package:flutter_androssy/widgets.dart';

class SettingIconTile extends StatelessWidget {
  final String title;
  final Color? titleColor;
  final double? titleSize;
  final String? subtitle;
  final Color? subtitleColor;
  final double? subtitleSize;
  final String? text;
  final Color? textColor;
  final double? textSize;
  final dynamic icon;
  final Color? iconColor;
  final Color? iconBackground;
  final Widget? leading;
  final Widget? flexibleSpace;
  final Widget? tailing;
  final bool showArrow;

  const SettingIconTile({
    super.key,
    required this.title,
    this.titleColor,
    this.titleSize,
    this.subtitle,
    this.subtitleColor,
    this.subtitleSize,
    this.text,
    this.textColor,
    this.textSize,
    this.icon,
    this.iconColor,
    this.iconBackground,
    this.leading,
    this.tailing,
    this.flexibleSpace,
    this.showArrow = true,
  });

  @override
  Widget build(BuildContext context) {
    var mIC = iconColor ?? context.primaryColor;
    return LinearLayout(
      background: Colors.white,
      paddingVertical: 12,
      orientation: Axis.horizontal,
      crossGravity: CrossAxisAlignment.center,
      paddingStart: 24,
      paddingEnd: 16,
      pressedColor: Colors.black.t05,
      rippleColor: Colors.black.t05,
      onClick: (context) {},
      children: [
        if (leading != null || icon != null)
          leading ??
              IconView(
                icon: icon,
                background: iconBackground ?? mIC.withOpacity(0.12),
                borderRadius: 25,
                padding: 8,
                tint: mIC,
                marginEnd: 16,
              ),
        LinearLayout(
          flex: 1,
          layoutGravity: LayoutGravity.start,
          children: [
            RawTextView(
              text: title,
              textSize: 18,
              textColor: Colors.black,
            ),
            if ((subtitle ?? "").isNotEmpty && text == null)
              RawTextView(
                text: subtitle,
                textSize: 12,
                textColor: Colors.black.t50,
              ),
          ],
        ),
        if ((subtitle ?? "").isEmpty)
          TextView(
            marginStart: 16,
            text: text,
            textSize: 14,
            textColor: Colors.black.t40,
          ),
        if (tailing != null)
          tailing!
        else
          IconView(
            icon: Icons.arrow_forward_ios_sharp,
            tint: Colors.black.t15,
            size: 16,
            marginStart: 12,
          ),
      ],
    );
  }
}
