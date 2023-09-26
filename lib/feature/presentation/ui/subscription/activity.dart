import 'package:flutter/material.dart';
import 'package:flutter_androssy/core.dart';
import 'package:flutter_androssy/widgets.dart';

class SubscriptionActivity extends AndrossyActivity {
  const SubscriptionActivity({
    super.key,
  });

  @override
  AndrossyController init(BuildContext context) {
    return AndrossyController();
  }

  @override
  Widget onCreate(BuildContext context, AndrossyInstance instance) {
    return LinearLayout(
      children: [],
    );
  }
}
