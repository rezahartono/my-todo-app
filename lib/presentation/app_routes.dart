import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_todo/presentation/pages/splash_page.dart';

class AppRoute {
  static final pages = [
    GetPage(
      name: RouteName.splashScreen,
      page: () => const SplashPage(),
      middlewares: const [],
      curve: Curves.easeOut,
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 500),
    ),
  ];
}

abstract class RouteName {
  static const splashScreen = '/';
}
