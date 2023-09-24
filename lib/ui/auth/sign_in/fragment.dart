import 'package:app_color/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_androssy/core.dart';
import 'package:flutter_androssy/widgets.dart';

import '../../../index.dart';

class AuthSignInFragment extends AndrossyFragment<AuthSignInController> {
  const AuthSignInFragment({
    super.key,
  });

  @override
  AuthSignInController init(BuildContext context) {
    return AuthSignInController();
  }

  @override
  Widget onCreate(context, controller) {
    return TextView(
      text: instance.translate("Sign in"),
      textColor: Colors.grey.t75,
      textSize: 32,
      gravity: Alignment.center,
      background: Colors.green.t05,
    );
  }
}
