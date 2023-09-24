import 'package:app_color/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_androssy/core.dart';
import 'package:flutter_androssy/widgets.dart';

import '../../../index.dart';

class AuthAddBiometricFragment
    extends AndrossyFragment<AuthAddBiometricController> {
  const AuthAddBiometricFragment({
    super.key,
  });

  @override
  AuthAddBiometricController init(BuildContext context) {
    return AuthAddBiometricController();
  }

  @override
  Widget onCreate(context, controller) {
    return TextView(
      text: instance.translate("Add biometric"),
      textColor: Colors.grey.t75,
      textSize: 32,
      gravity: Alignment.center,
    );
  }
}
