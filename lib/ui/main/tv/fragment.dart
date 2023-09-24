import 'package:app_color/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_androssy/widgets.dart';

import '../../../index.dart';

class TVFragment extends BaseFragment<TVFragmentController> {
  const TVFragment({
    super.key,
  });

  @override
  TVFragmentController init(BuildContext context) {
    return TVFragmentController();
  }

  @override
  Widget onCreate(context, controller) {
    return TextView(
      text: translate("TV"),
      textColor: Colors.grey.t75,
      textSize: 32,
      gravity: Alignment.center,
    );
  }
}
