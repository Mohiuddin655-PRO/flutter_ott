import 'package:flutter/material.dart';
import 'package:flutter_androssy/extensions.dart';
import 'package:flutter_androssy/services.dart';
import 'package:flutter_androssy/widgets.dart';

import '../../index.dart';

class SettingsLayout extends StatelessWidget {
  final OnViewClickListener? onAccount;
  final OnViewClickListener? onAppLanguage;
  final OnViewClickListener? onAvatar;
  final OnViewClickListener? onChats;
  final OnViewClickListener? onHelp;
  final OnViewClickListener? onInviteAFriend;
  final OnViewClickListener? onNotifications;
  final OnViewClickListener? onPrivacy;
  final OnViewClickListener? onStorageAndData;

  const SettingsLayout({
    super.key,
    this.onAccount,
    this.onAppLanguage,
    this.onAvatar,
    this.onChats,
    this.onHelp,
    this.onInviteAFriend,
    this.onNotifications,
    this.onPrivacy,
    this.onStorageAndData,
  });

  @override
  Widget build(BuildContext context) {
    return LinearLayout(
      scrollable: true,
      children: [
        SettingsView(
          rippleColor: context.splashColor,
          pressedColor: Colors.white12,
          title: "Account",
          summary: "Security notifications, change number",
          icon: Icons.key,
          onClick: onAccount,
        ),
        SettingsView(
          title: "Privacy",
          summary: "Block contacts, disappearing messages",
          icon: Icons.lock,
          onClick: onPrivacy,
        ),
        SettingsView(
          title: "Avatar",
          summary: "Create, edit, profile photo",
          icon: Icons.face,
          onClick: onAvatar,
        ),
        SettingsView(
          title: "Chats",
          summary: "Theme, wallpapers, chat history",
          icon: Icons.chat,
          onClick: onChats,
        ),
        SettingsView(
          title: "Notifications",
          summary: "Message group & call tones",
          icon: Icons.notifications,
          onClick: onNotifications,
        ),
        SettingsView(
          title: "Storage and data",
          summary: "Network usage, auto-download",
          icon: Icons.data_usage_outlined,
          onClick: onStorageAndData,
        ),
        SettingsView(
          title: "App language",
          summary: "English (device's language)",
          icon: Icons.language_rounded,
          onClick: onAppLanguage,
        ),
        SettingsView(
          title: "Help",
          summary: "Help center, contact us, privacy policy",
          icon: Icons.help_outline,
          onClick: onHelp,
        ),
        SettingsView(
          title: "Invite a friend",
          icon: Icons.group,
          onClick: onInviteAFriend,
        ),
        LinearLayout(
          layoutGravity: LayoutGravity.center,
          paddingVertical: 24,
          paddingHorizontal: 24,
          marginBottom: 24,
          children: [
            TextView(
              text: "from",
              textColor: context.titleSmall.color,
            ),
            LinearLayout(
              marginTop: 4,
              orientation: Axis.horizontal,
              width: double.infinity,
              crossGravity: CrossAxisAlignment.center,
              mainGravity: MainAxisAlignment.center,
              children: [
                RawIconView(
                  icon: Icons.face_5_outlined,
                  size: 18,
                  tint: context.textTheme.titleMedium?.color,
                ),
                TextView(
                  marginStart: 4,
                  text: "Meta",
                  textSize: 16,
                  textColor: context.titleMedium.color,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
