import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_androssy/extensions.dart';
import 'package:flutter_androssy/widgets.dart';

import '../../index.dart';

class MainActivity extends BaseActivity<MainController> {
  const MainActivity({
    super.key,
    super.title = "Home",
    super.elevation = 0,
  });

  @override
  MainController init(BuildContext context) {
    return MainController();
  }

  @override
  List<Widget>? onCreateActions(BuildContext context) {
    return [
      IconView(
        icon: Icons.search,
        size: 40,
        padding: 8,
        marginEnd: 8,
        shape: ViewShape.circular,
        rippleColor: Colors.white12,
        background: Colors.transparent,
        onClick: (_) {
          if (kDebugMode) {
            print(_);
          }
        },
      ),
    ];
  }

  @override
  Widget? onCreateDrawer(BuildContext context) {
    return HomeActivityDrawer(
      instance: instance,
      currentSelection: controller.selectionType,
      onSelectionChange: (c, s) {
        controller.onNotifyWithSelection(c, s);
      },
    );
  }

  @override
  Widget onCreate(context, instance) {
    return NavigationView(
      onIndexChanged: controller.setNavigationIndex,
      currentIndex: controller.index,
      positionType: ViewPositionType.bottom,
      paddingVertical: 12,
      background: context.bottomAppBarTheme.color,
      spaceBetween: 0,
      titleColorState: ValueState(
        primary: context.bottomNavigationBarTheme.unselectedItemColor,
        secondary: context.bottomNavigationBarTheme.selectedItemColor,
      ),
      iconTintState: ValueState(
        primary: context.bottomNavigationBarTheme.unselectedItemColor,
        secondary: context.bottomNavigationBarTheme.selectedItemColor,
      ),
      iconSizeState: ValueState(
        primary: context.bottomNavigationBarTheme.unselectedIconTheme?.size,
        secondary: context.bottomNavigationBarTheme.selectedIconTheme?.size,
      ),
      items: [
        NavigationItem(
          title: translate("Home"),
          iconState: const ValueState(
            primary: Icons.home_outlined,
            secondary: Icons.home,
          ),
        ),
        NavigationItem(
          title: translate("TV"),
          iconState: const ValueState(
            primary: Icons.live_tv_outlined,
            secondary: Icons.live_tv,
          ),
        ),
        NavigationItem(
          title: translate("Movies"),
          iconState: const ValueState(
            primary: Icons.movie_creation_outlined,
            secondary: Icons.movie_creation,
          ),
        ),
        NavigationItem(
          title: translate("Drama"),
          iconState: const ValueState(
            primary: Icons.desktop_mac_outlined,
            secondary: Icons.desktop_mac,
          ),
        ),
        NavigationItem(
          title: translate("Coming Soon"),
          iconState: const ValueState(
            primary: Icons.play_circle_outline,
            secondary: Icons.play_circle,
          ),
        ),
      ],
      builder: (context, index) {
        if (index == 1) {
          return const TVFragment();
        } else if (index == 2) {
          return const MoviesFragment();
        } else if (index == 3) {
          return const DramaFragment();
        } else if (index == 4) {
          return const ComingSoonFragment();
        } else {
          return const HomeFragment();
        }
      },
    );
  }
}
