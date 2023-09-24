import 'package:app_color/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_androssy/core.dart';
import 'package:flutter_androssy/widgets.dart';

import '../../../index.dart';

class AuthOtpFragment extends AndrossyFragment<AuthOtpController> {
  const AuthOtpFragment({
    super.key,
  });

  @override
  AuthOtpController init(BuildContext context) {
    return AuthOtpController();
  }

  @override
  Widget onCreate(context, controller) {
    return TextView(
      text: instance.translate("OTP"),
      textColor: Colors.grey.t75,
      textSize: 32,
      gravity: Alignment.center,
      background: Colors.green.t05,
    );
  }
}
