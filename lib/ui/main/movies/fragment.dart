import 'package:app_color/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_androssy/widgets.dart';

import '../../../index.dart';

class MoviesFragment extends BaseFragment<MoviesFragmentController> {
  const MoviesFragment({
    super.key,
  });

  @override
  MoviesFragmentController init(BuildContext context) {
    return MoviesFragmentController();
  }

  @override
  Widget onCreate(context, controller) {
    return TextView(
      text: translate("Movies"),
      textColor: Colors.grey.t75,
      textSize: 32,
      gravity: Alignment.center,
    );
  }
}
