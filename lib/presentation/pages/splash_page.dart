import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_todo/presentation/controllers/splash_controller.dart';
import 'package:my_todo/utils/styles/layout_config.dart';
import 'package:my_todo/utils/styles/theme.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    layoutConfig.init(context);
    return GetX(
      init: controller,
      tag: 'SplashPage',
      initState: (state) {
        controller.increment();
      },
      builder: (context) {
        return Scaffold(
          body: SafeArea(
            child: Container(
              width: layoutConfig.screenWidth,
              height: layoutConfig.screenHeight,
              color: color.green,
              child: Center(
                child: Column(
                  children: [
                    Text(
                      "${context.number.value}",
                      style: textStyle.whiteText,
                    ),
                    ElevatedButton(
                      onPressed: () => context.increment(),
                      child: const Text('Product Screen'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
