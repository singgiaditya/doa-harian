import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  final controller = Get.find<SplashScreenController>();
  SplashScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: Get.width,
            height: Get.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/background.jpg"),
                  fit: BoxFit.cover),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Container(
                color: Colors.white10,
                child: Center(
                  child: Card(
                    color: Colors.transparent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                        side: BorderSide(color: Colors.white60)),
                    child: Container(
                      width: Get.width / 1.5,
                      height: Get.height / 3,
                      color: Colors.transparent,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/doaSiluet.png",
                            height: 120,
                            color: Colors.white70,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Doa Harian Islam",
                            style: TextStyle(
                                fontSize: 32,
                                color: Colors.white70,
                                fontFamily: "Arabic"),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )));
  }
}
