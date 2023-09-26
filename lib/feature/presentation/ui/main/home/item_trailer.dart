import 'package:app_color/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_androssy/widgets.dart';

import '../../../../../index.dart';

class ItemTrailer extends StatelessWidget {
  final Movie model;

  const ItemTrailer({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return FlexibleView(
      width: MediaQuery.sizeOf(context).width,
      flexible: YMRView(
        width: MediaQuery.sizeOf(context).width,
        background: Colors.red.t50,
      ),
      child: LinearLayout(
        children: [
          ImageView(
            width: double.infinity,
            height: 300,
            image: model.thumbnail,
            background: Colors.green.t10,
            borderRadius: 12,
          ),
        ],
      ),
    );
  }
}
