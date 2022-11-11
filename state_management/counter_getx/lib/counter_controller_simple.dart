import 'package:get/get.dart';

// Create controller class and extends GetxController
class CounterController extends GetxController {
  static CounterController get to => Get.find();

  int count = 0;
  void increment() {
    count++;
    update(); // use update() to update counter variable on UI when increment be called
  }

  void decrement() {
    count--;
    update(); // use update() to update counter variable on UI when increment be called
  }
}
