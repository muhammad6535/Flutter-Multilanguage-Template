// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:project_template/controller/home_conroller.dart';
import 'package:project_template/locale/locale_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  final HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    LocaleController localeController = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: Text("Home".tr),
      ),
      body: SizedBox(
        width: Get.width,
        height: Get.height,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildRow(),
              SizedBox(
                height: 80,
              ),
              FilledButton(
                  onPressed: () {
                    localeController.changeLang('en');
                  },
                  child: Text("English".tr)),
              SizedBox(
                height: 20,
              ),
              FilledButton(
                  onPressed: () {
                    localeController.changeLang('ar');
                  },
                  child: Text("Arabic".tr)),
              SizedBox(
                height: 20,
              ),
              FilledButton(
                  onPressed: () {
                    localeController.changeLang('he');
                  },
                  child: Text("Hebrew".tr))
            ],
          ),
        ),
      ),
    );
  }

  Widget buildRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          child: Icon(Icons.remove, color: Colors.blueGrey, size: 50),
          onTap: () {
            homeController.sub();
          },
        ),
        SizedBox(
          width: 10,
        ),
        Obx(
          () => Text(
            "${homeController.counter.value}",
            style: TextStyle(fontSize: 45),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        InkWell(
          child: Icon(Icons.add, color: Colors.blueGrey, size: 50),
          onTap: () {
            homeController.add();
          },
        ),
      ],
    );
  }
}
