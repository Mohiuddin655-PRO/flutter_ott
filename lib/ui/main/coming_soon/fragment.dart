import 'package:app_color/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_androssy/widgets.dart';

import '../../../index.dart';

class ComingSoonFragment extends BaseFragment<ComingSoonFragmentController> {
  const ComingSoonFragment({
    super.key,
  });

  @override
  ComingSoonFragmentController init(BuildContext context) {
    return ComingSoonFragmentController();
  }

  @override
  Widget onCreate(context, controller) {
    return TextView(
      text: translate("Coming Soon"),
      textColor: Colors.grey.t75,
      textSize: 32,
      gravity: Alignment.center,
    );
  }
}
