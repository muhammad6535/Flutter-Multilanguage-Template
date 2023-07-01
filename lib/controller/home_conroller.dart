import 'package:get/get.dart';

class HomeController extends GetxController {
  var counter = 0.obs;

  add() {
    counter.value++;
  }

  sub() {
    counter.value--;
  }
}
