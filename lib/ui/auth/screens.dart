enum AuthScreens {
  addBiometric("add_biometric", "Add Biometric"),
  addSecurityQuestion("asq", "Add Security Questions"),
  biometricLogin("biometric", "Biometric"),
  otp("otp", "Verification"),
  forgotPassword("forgot_password", "Forgot Password"),
  resetPassword("reset_password", "Reset Password"),
  signIn("sign_in", "Sign in"),
  signUp("sign_up", "Sign up"),
  none("auth", "Authentication");

  final String name;
  final String title;

  static String get route => none.name;

  const AuthScreens(this.name, this.title);
}
