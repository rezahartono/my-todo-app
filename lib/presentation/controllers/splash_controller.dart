import 'package:get/get.dart';

class SplashController extends GetxController {
  SplashController();
  final number = 1.obs;

  increment() {
    number.value++;
    update();
  }
}
