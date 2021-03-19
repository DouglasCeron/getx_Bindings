import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_binding_ripples/all_bindings.dart';
import 'package:getx_binding_ripples/home_controller.dart';
import 'package:getx_binding_ripples/home_controller_binding.dart';

import 'home.dart';
import 'my_app_controller_binding.dart';
import 'my_controller.dart';

void main() {
  MyAppControllerBinding().dependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      //initialBinding: AllBindings(),
      title: 'Starting Page',
      getPages: [
        GetPage(
            name: '/Home',
            page: () => Home(),
            binding: HomeControllerBinding(),
        ),
      ],
      home: Scaffold(
        appBar: AppBar(
          title: Text('Getx Binding'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(
                () => Text(
                  'The value is ${Get.find<MyController>().count}',
                  style: TextStyle(fontSize: 25),
                ),
              ),
              RaisedButton(
                child: Text('Increment'),
                onPressed: () {
                  Get.find<MyController>().increment();
                },
              ),
              SizedBox(
                height: 10,
              ),
              RaisedButton(
                child: Text(
                  'casa',

                ),
                onPressed: () {
                  //Get.to(Home());
                  Get.toNamed('/Home');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
