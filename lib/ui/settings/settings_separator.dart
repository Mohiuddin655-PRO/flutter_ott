import 'package:flutter/material.dart';
import 'package:flutter_androssy/widgets.dart';

class SettingsSeparator extends StatelessWidget {
  const SettingsSeparator({super.key});

  @override
  Widget build(BuildContext context) {
    return YMRView(
      paddingHorizontal: 24,
      paddingStart: 78,
      paddingVertical: 12,
      background: Colors.white,
      child: Divider(
        thickness: 1,
        color: Colors.grey.shade100,
      ),
    );
  }
}
