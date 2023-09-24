import 'package:flutter/material.dart';

import '../../index.dart';

class AuthActivity extends BaseActivity<AuthController> {
  final AuthScreens screen;

  const AuthActivity({
    super.key,
    super.hideToolbar = true,
    this.screen = AuthScreens.signIn,
  });

  @override
  AuthController init(BuildContext context) {
    return AuthController();
  }

  @override
  Widget onCreate(context, instance) {
    switch (screen) {
      case AuthScreens.addBiometric:
        return const AuthAddBiometricFragment();
      case AuthScreens.addSecurityQuestion:
        return const AuthASQFragment();
      case AuthScreens.biometricLogin:
        return const AuthBiometricLoginFragment();
      case AuthScreens.forgotPassword:
        return const AuthForgotPasswordFragment();
      case AuthScreens.otp:
        return const AuthOtpFragment();
      case AuthScreens.resetPassword:
        return const AuthResetPasswordFragment();
      case AuthScreens.signUp:
        return const AuthSignUpFragment();
      default:
        return const AuthSignInFragment();
    }
  }
}
