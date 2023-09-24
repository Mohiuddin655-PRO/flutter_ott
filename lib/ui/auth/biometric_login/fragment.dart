import 'package:app_color/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_androssy/core.dart';
import 'package:flutter_androssy/widgets.dart';

import '../../../index.dart';

class AuthBiometricLoginFragment
    extends AndrossyFragment<AuthBiometricLoginController> {
  const AuthBiometricLoginFragment({
    super.key,
  });

  @override
  AuthBiometricLoginController init(BuildContext context) {
    return AuthBiometricLoginController();
  }

  @override
  Widget onCreate(context, controller) {
    return TextView(
      text: instance.translate("Biometric Login"),
      textColor: Colors.grey.t75,
      textSize: 32,
      gravity: Alignment.center,
      background: Colors.green.t05,
    );
  }
}
