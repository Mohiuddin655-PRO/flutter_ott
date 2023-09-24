import 'package:data_management/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_andomie/core.dart';
import 'package:flutter_androssy/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ott/ui/main/home/item_medium.dart';
import 'package:flutter_ott/ui/main/home/item_small.dart';

import '../../../index.dart';

class HomeFragment extends BaseFragment<HomeFragmentController> {
  final DrawerSelectionType type;

  const HomeFragment({
    super.key,
    this.type = DrawerSelectionType.shows,
  });

  @override
  HomeFragmentController init(BuildContext context) {
    return HomeFragmentController();
  }

  @override
  Widget onCreate(context, controller) {
    return LinearLayout(
      width: double.infinity,
      scrollable: true,
      scrollingType: ViewScrollingType.bouncing,
      paddingBottom: 16,
      children: [
        BlocBuilder<MovieCategoryDataController,
            DataResponse<MovieCategoryModel>>(
          builder: (context, response) {
            return RecyclerView(
                items: response.result,
                builder: (index, category) {
                  return LinearLayout(
                    marginTop: 16,
                    width: double.infinity,
                    children: [
                      LinearLayout(
                        width: double.infinity,
                        orientation: Axis.horizontal,
                        crossGravity: CrossAxisAlignment.center,
                        paddingHorizontal: 12,
                        paddingVertical: 8,
                        children: [
                          TextView(
                            flex: 1,
                            text: category.type?.name,
                            textSize: 16,
                            textFontWeight: FontWeight.w500,
                            textColor: Colors.white70,
                          ),
                          TextView(
                            text: translate("See all"),
                            textSize: 16,
                            textFontWeight: FontWeight.w500,
                            textColor: AppColors.secondary,
                          ),
                        ],
                      ),
                      RecyclerView(
                        paddingHorizontal: 12,
                        scrollingType: ViewScrollingType.bouncing,
                        width: double.infinity,
                        scrollable: true,
                        orientation: Axis.horizontal,
                        items: category.contents.use,
                        spaceBetween: 8,
                        builder: (index, content) {
                          if (category.type!.isBanner) {
                            return ItemMedium(
                              model: content,
                            );
                          }
                          return ItemSmall(model: content);
                        },
                      ),
                    ],
                  );
                });
          },
        ),
      ],
    );
  }
}
