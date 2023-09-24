import 'package:app_color/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_androssy/extensions.dart';
import 'package:flutter_androssy/widgets.dart';
import 'package:flutter_ott/data/index.dart';

class ItemMedium extends StatelessWidget {
  final MovieModel model;

  const ItemMedium({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    double dimensionSize = size.width.x(80) ?? 180;
    return ImageView(
      width: dimensionSize,
      height: dimensionSize.x(65),
      image: model.thumbnail,
      background: Colors.grey.t50,
      borderRadius: dimensionSize.x(5),
    );
  }
}
