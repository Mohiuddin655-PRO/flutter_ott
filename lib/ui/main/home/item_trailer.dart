import 'package:app_color/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_androssy/widgets.dart';
import 'package:flutter_ott/data/index.dart';

class ItemNewMovie extends StatelessWidget {
  final MovieModel model;
  const ItemNewMovie({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return ImageView(
      image: model.thumbnail,
      background: Colors.grey.t50,
      borderRadius: 12,
      dimensionRatio: 1 / 1.8,
    );
  }
}
