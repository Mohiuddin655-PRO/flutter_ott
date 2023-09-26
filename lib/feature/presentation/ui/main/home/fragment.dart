import 'package:data_management/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_androssy/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../index.dart';

class HomeFragment extends StatelessWidget {
  final String Function(String value) translate;
  final DrawerSelectionType type;

  const HomeFragment({
    super.key,
    required this.translate,
    this.type = DrawerSelectionType.shows,
  });

  @override
  Widget build(BuildContext context) {
    return LinearLayout(
      width: double.infinity,
      scrollable: true,
      scrollingType: ViewScrollingType.bouncing,
      paddingBottom: 16,
      children: [
        MainCarousel(
          margin: const EdgeInsets.symmetric(vertical: 12),
          items: MainCarouselInfo.demo,
        ),
        BlocBuilder<MovieLatestController, DataResponse<Movie>>(
          builder: (context, response) {
            return CategoryMoviesForSmall(
              category: translate("Best and Latest"),
              translate: translate,
              movies: response.result,
            );
          },
        ),
        BlocBuilder<MovieRecentWatchController, DataResponse<Movie>>(
          builder: (context, response) {
            return CategoryMoviesForMedium(
              category: translate("Continue Watching"),
              translate: translate,
              movies: response.result,
            );
          },
        ),
        BlocBuilder<MoviePremiumController, DataResponse<Movie>>(
          builder: (context, response) {
            return CategoryMoviesForSmall(
              category: translate("Bongo Premium"),
              translate: translate,
              movies: response.result,
            );
          },
        ),
        BlocBuilder<MovieShortController, DataResponse<Movie>>(
          builder: (context, response) {
            return CategoryMoviesForSmall(
              category: translate("Shorts"),
              translate: translate,
              movies: response.result,
            );
          },
        ),
        BlocBuilder<MovieShortController, DataResponse<Movie>>(
          builder: (context, response) {
            return CategoryMoviesForSmall(
              category: translate("Shorts"),
              translate: translate,
              movies: response.result,
            );
          },
        ),
      ],
    );
  }
}

class CategoryMoviesForSmall extends StatelessWidget {
  final double marginTop;
  final String Function(String value) translate;
  final String category;
  final List<Movie> movies;

  const CategoryMoviesForSmall({
    super.key,
    this.marginTop = 16,
    required this.category,
    required this.movies,
    required this.translate,
  });

  @override
  Widget build(BuildContext context) {
    return LinearLayout(
      marginTop: marginTop,
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
              text: category,
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
          items: movies,
          spaceBetween: 8,
          builder: (index, content) {
            return ItemMovie(
              model: content,
            );
          },
        ),
      ],
    );
  }
}

class CategoryMoviesForMedium extends StatelessWidget {
  final double marginTop;
  final String Function(String value) translate;
  final String category;
  final List<Movie> movies;

  const CategoryMoviesForMedium({
    super.key,
    this.marginTop = 16,
    required this.category,
    required this.movies,
    required this.translate,
  });

  @override
  Widget build(BuildContext context) {
    return LinearLayout(
      marginTop: marginTop,
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
              text: category,
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
          items: movies,
          spaceBetween: 8,
          builder: (index, content) {
            return ItemDrama(
              model: content,
            );
          },
        ),
      ],
    );
  }
}
