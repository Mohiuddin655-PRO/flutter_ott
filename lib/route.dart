import 'package:flutter/material.dart';
import 'package:flutter_app_navigator/app_navigator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'index.dart';

class AppRouter extends AppRouteGenerator {
  const AppRouter._();

  static AppRouter get I => const AppRouter._();

  @override
  AppRouteConfig get config {
    return const AppRouteConfig(
      animationTime: 700,
    );
  }

  @override
  Map<String, RouteBuilder> routes() {
    return {
      AuthScreens.route: auth,
      MainScreens.route: main,
      SettingsScreens.route: settings,
      SplashScreens.route: splash,
    };
  }

  @override
  Widget onDefault(BuildContext context, Object? data) => main(context, data);

  Widget auth(BuildContext context, Object? data) {
    return AuthActivity(
      screen: data("screen", AuthScreens.signIn),
    );
  }

  Widget main(BuildContext context, Object? data) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => di<MovieFreeController>()..fetch()),
        BlocProvider(create: (_) => di<MovieLatestController>()..fetch()),
        BlocProvider(create: (_) => di<MovieMostWatchedController>()..fetch()),
        BlocProvider(create: (_) => di<MoviePremiumController>()..fetch()),
        BlocProvider(create: (_) => di<MovieRecentWatchController>()..fetch()),
        BlocProvider(create: (_) => di<MovieShortController>()..fetch()),
        BlocProvider(create: (_) => di<MovieCarouselController>()..fetch()),
        BlocProvider(create: (_) => di<MovieTrailerController>()..fetch()),
      ],
      child: const MainActivity(),
    );
  }

  Widget settings(BuildContext context, Object? data) {
    return SettingsActivity(
      screen: data("screen", SettingsScreens.none),
    );
  }

  Widget splash(BuildContext context, Object? data) {
    return const SplashActivity();
  }
}
