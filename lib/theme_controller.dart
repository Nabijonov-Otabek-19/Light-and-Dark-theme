import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class MyThemeController extends GetxController {
  final _box = GetStorage();

  bool getDarkMode() {
    // if mode is true, theme dark, else light
    bool? mode = _box.read('mode') ?? false;
    return mode;
  }

  void setDarkMode(bool mode) async {
    await _box.write('mode', mode);

    if (mode) {
      Get.changeThemeMode(ThemeMode.dark);
    } else {
      Get.changeThemeMode(ThemeMode.light);
    }
    update();
  }
}
