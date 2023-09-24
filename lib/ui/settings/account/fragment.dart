import 'package:flutter/material.dart';
import 'package:flutter_androssy/widgets.dart';

import '../../../index.dart';

class SettingsAccountFragment extends BaseFragment<SettingsAccountController> {
  const SettingsAccountFragment({
    super.key,
  });

  @override
  SettingsAccountController init(context) {
    return SettingsAccountController();
  }

  @override
  Widget onCreate(context, controller) {
    return const LinearLayout(
      scrollable: true,
      children: [
        SettingsView(
          title: "System notifications",
          icon: Icons.shield_moon,
        ),
        SettingsView(
          title: "Two-step verification",
          icon: Icons.password_outlined,
        ),
        SettingsView(
          title: "Change number",
          icon: Icons.phonelink_setup_rounded,
        ),
        SettingsView(
          title: "Request account info",
          icon: Icons.sticky_note_2,
        ),
        SettingsView(
          title: "Delete account",
          icon: Icons.delete,
        ),
      ],
    );
  }
}