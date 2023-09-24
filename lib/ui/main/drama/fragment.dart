import 'package:app_color/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_androssy/widgets.dart';

import '../../../index.dart';

class DramaFragment extends BaseFragment<DramaFragmentController> {
  const DramaFragment({
    super.key,
  });

  @override
  DramaFragmentController init(BuildContext context) {
    return DramaFragmentController();
  }

  @override
  Widget onCreate(context, controller) {
    return TextView(
      text: translate("Drama"),
      textColor: Colors.grey.t75,
      textSize: 32,
      gravity: Alignment.center,
    );
  }
}
