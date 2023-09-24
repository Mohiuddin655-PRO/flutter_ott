import 'package:flutter/material.dart';
import 'package:flutter_androssy/core.dart';
import 'package:flutter_androssy/extensions.dart';
import 'package:flutter_androssy/services.dart';
import 'package:flutter_androssy/widgets.dart';
import 'package:flutter_ott/index.dart';

class HomeDrawerFooter extends StatelessWidget {
  final AndrossyInstance instance;
  final OnViewClickListener? onSignIn, onSignUp;

  const HomeDrawerFooter({
    super.key,
    required this.instance,
    this.onSignIn,
    this.onSignUp,
  });

  @override
  Widget build(BuildContext context) {
    return LinearLayout(
      width: double.infinity,
      paddingHorizontal: 24,
      paddingTop: 8,
      paddingBottom: 24,
      children: [
        TextView(
          text: instance.translate(
            "For better experience please login or register",
          ),
          textStyle: context.textTheme.titleSmall,
        ),
        PrimaryButton(
          marginTop: 16,
          text: instance.translate("Log in"),
          onClick: onSignIn,
        ),
        SecondaryButton(
          marginTop: 16,
          text: instance.translate("Sign up"),
          onClick: onSignUp,
        ),
      ],
    );
  }
}
