import 'package:app_color/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_androssy/extensions.dart';
import 'package:flutter_androssy/widgets.dart';
import 'package:flutter_ott/data/index.dart';

class ItemSmall extends StatelessWidget {
  final MovieModel model;

  const ItemSmall({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    double dimensionSize = 120;
    return ImageView(
      width: dimensionSize,
      height: dimensionSize.xi(65),
      image: model.thumbnail,
      background: Colors.grey.t50,
      borderRadius: dimensionSize.x(10),
    );
  }
}
