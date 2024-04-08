import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyThemeController extends GetxController {
  bool isDarkMode = false;

  Future<void> changeTheme(bool state) async {
    isDarkMode = state;

    if (isDarkMode) {
      Get.changeThemeMode(ThemeMode.dark);
    } else {
      Get.changeThemeMode(ThemeMode.light);
    }
    update(); // Notify listeners to rebuild
  }
}
