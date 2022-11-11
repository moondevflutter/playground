import 'package:get/get.dart';

// Create controller class and extends GetxController
class CounterController extends GetxController {
  static CounterController get to => Get.find();

  RxInt count = 0.obs;
  int get increment => count.value++;
  int get decrement => count.value--;
}
