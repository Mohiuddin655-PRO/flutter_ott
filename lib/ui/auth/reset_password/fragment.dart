import 'package:app_color/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_androssy/core.dart';
import 'package:flutter_androssy/widgets.dart';

import '../../../index.dart';

class AuthResetPasswordFragment
    extends AndrossyFragment<AuthResetPasswordController> {
  const AuthResetPasswordFragment({
    super.key,
  });

  @override
  AuthResetPasswordController init(BuildContext context) {
    return AuthResetPasswordController();
  }

  @override
  Widget onCreate(context, controller) {
    return TextView(
      text: instance.translate("Reset Password"),
      textColor: Colors.grey.t75,
      textSize: 32,
      gravity: Alignment.center,
      background: Colors.green.t05,
    );
  }
}