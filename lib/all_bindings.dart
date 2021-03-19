

import 'package:get/get.dart';
import 'package:getx_binding_ripples/home_controller.dart';
import 'package:getx_binding_ripples/my_controller.dart';

class AllBindings implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<MyController>(() => MyController());
    Get.lazyPut<HomeController>(() => HomeController());

  }



}