import 'dart:async';

import 'package:doa_harian/app/routes/app_pages.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Timer(Duration(seconds: 3), () {
      Get.offAllNamed(Routes.HOME);
    });
  }
}
