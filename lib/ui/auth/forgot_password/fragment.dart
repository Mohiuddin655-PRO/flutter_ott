import 'package:app_color/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_androssy/core.dart';
import 'package:flutter_androssy/widgets.dart';

import '../../../index.dart';

class AuthForgotPasswordFragment
    extends AndrossyFragment<AuthForgotPasswordController> {
  const AuthForgotPasswordFragment({
    super.key,
  });

  @override
  AuthForgotPasswordController init(BuildContext context) {
    return AuthForgotPasswordController();
  }

  @override
  Widget onCreate(context, controller) {
    return TextView(
      text: instance.translate("Forget Password"),
      textColor: Colors.grey.t75,
      textSize: 32,
      gravity: Alignment.center,
      background: Colors.green.t05,
    );
  }
}
