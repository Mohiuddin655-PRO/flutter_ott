import 'package:flutter/material.dart';
import 'package:flutter_androssy/extensions.dart';
import 'package:flutter_androssy/widgets.dart';
import 'package:flutter_app_navigator/app_navigator.dart';

import '../../index.dart';

class SettingsActivity extends BaseActivity<SettingsController> {
  final SettingsScreens screen;

  SettingsActivity({
    super.key,
    this.screen = SettingsScreens.none,
  }) : super(title: screen.title);

  @override
  SettingsController init(context) {
    return SettingsController();
  }

  @override
  List<Widget>? onCreateActions(context) {
    var theme = context.appBarTheme.actionsIconTheme;
    return [
      IconView(
        visibility: screen == SettingsScreens.none,
        marginEnd: 8,
        rippleColor: context.splashColor,
        background: Colors.transparent,
        padding: 8,
        icon: Icons.search_rounded,
        tint: theme?.color,
        size: theme?.size.x70i ?? 40,
        shape: ViewShape.circular,
        onClick: (_) {},
      ),
    ];
  }

  @override
  Widget onCreate(context, instance) {
    switch (screen) {
      case SettingsScreens.account:
        return const SettingsAccountFragment();
      case SettingsScreens.appLanguage:
        return const SettingsAppLanguageFragment();
      case SettingsScreens.avatar:
        return const SettingsAvatarFragment();
      case SettingsScreens.chats:
        return const SettingsChatsFragment();
      case SettingsScreens.help:
        return const SettingsHelpFragment();
      case SettingsScreens.inviteAFriend:
        return const SettingsInviteAFriendFragment();
      case SettingsScreens.notifications:
        return const SettingsNotificationsFragment();
      case SettingsScreens.privacy:
        return const SettingsPrivacyFragment();
      case SettingsScreens.storageAndData:
        return const SettingsStorageAndDataFragment();
      default:
        return SettingsLayout(
          onAccount: (_) => loadFragment(
            context,
            SettingsScreens.account,
          ),
          onAppLanguage: (_) => loadFragment(
            context,
            SettingsScreens.appLanguage,
          ),
          onAvatar: (_) => loadFragment(
            context,
            SettingsScreens.avatar,
          ),
          onChats: (_) => loadFragment(
            context,
            SettingsScreens.chats,
          ),
          onHelp: (_) => loadFragment(
            context,
            SettingsScreens.help,
          ),
          onInviteAFriend: (_) => loadFragment(
            context,
            SettingsScreens.inviteAFriend,
          ),
          onNotifications: (_) => loadFragment(
            context,
            SettingsScreens.notifications,
          ),
          onPrivacy: (_) => loadFragment(
            context,
            SettingsScreens.privacy,
          ),
          onStorageAndData: (_) => loadFragment(
            context,
            SettingsScreens.storageAndData,
          ),
        );
    }
  }

  void loadFragment(BuildContext context, SettingsScreens screen) {
    AppNavigator.of(context).push(
      SettingsScreens.none.name,
      arguments: {
        "screen": screen,
      },
    );
  }
}
