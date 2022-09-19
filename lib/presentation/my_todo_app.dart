import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_todo/presentation/app_routes.dart';
import 'package:my_todo/presentation/bindings/splash_binding.dart';
import 'package:my_todo/presentation/pages/splash_page.dart';
import 'package:my_todo/utils/styles/theme.dart';

class MyTodoApp extends StatelessWidget {
  const MyTodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'MY-TODO APPS',
      debugShowCheckedModeBanner: false,
      getPages: AppRoute.pages,
      home: const SplashPage(),
      initialBinding: SplashBinding(),
      theme: theme.light(),
      darkTheme: theme.dark(),
    );
  }
}
