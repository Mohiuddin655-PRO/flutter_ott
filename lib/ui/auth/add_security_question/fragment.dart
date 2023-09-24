import 'package:app_color/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_androssy/core.dart';
import 'package:flutter_androssy/widgets.dart';

import '../../../index.dart';

class AuthASQFragment extends AndrossyFragment<AuthASQController> {
  const AuthASQFragment({
    super.key,
  });

  @override
  AuthASQController init(BuildContext context) {
    return AuthASQController();
  }

  @override
  Widget onCreate(context, controller) {
    return TextView(
      text: instance.translate("Add Security Questions"),
      textColor: Colors.grey.t75,
      textSize: 32,
      gravity: Alignment.center,
      background: Colors.green.t05,
    );
  }
}
