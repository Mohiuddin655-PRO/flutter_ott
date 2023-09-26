import 'package:app_color/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_androssy/widgets.dart';

class ComingSoonFragment extends StatelessWidget {
  final String Function(String value) translate;

  const ComingSoonFragment({
    super.key,
    required this.translate,
  });

  @override
  Widget build(BuildContext context) {
    return TextView(
      text: translate("Coming Soon"),
      textColor: Colors.grey.t75,
      textSize: 32,
      gravity: Alignment.center,
    );
  }
}
