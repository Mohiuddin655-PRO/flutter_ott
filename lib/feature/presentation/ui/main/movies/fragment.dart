import 'package:app_color/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_androssy/widgets.dart';

class MoviesFragment extends StatelessWidget {
  final String Function(String value) translate;

  const MoviesFragment({
    super.key,
    required this.translate,
  });

  @override
  Widget build(BuildContext context) {
    return TextView(
      text: translate("Movies"),
      textColor: Colors.grey.t75,
      textSize: 32,
      gravity: Alignment.center,
    );
  }
}
