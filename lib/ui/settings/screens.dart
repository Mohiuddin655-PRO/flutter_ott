enum SettingsScreens {
  account("Account", "account"),
  privacy("Privacy", "privacy"),
  avatar("Avatar", "avatar"),
  chats("Chats", "chats"),
  notifications("Notifications", "notifications"),
  storageAndData("Storage and data", "storage_and_data"),
  appLanguage("App language", "app_language"),
  help("Help", "help"),
  inviteAFriend("Invite a friend", "invite_a_friend"),
  none("Settings", "settings");

  final String name;
  final String title;

  static String get route => none.name;

  const SettingsScreens(this.title, this.name);
}
