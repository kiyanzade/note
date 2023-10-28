import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeController extends GetxController {
  RxBool isDark = false.obs;

  @override
  void onInit() async {
    super.onInit();
    isDark.value = GetStorage().read("isDark") ?? false;
    Get.changeThemeMode(isDark.value ? ThemeMode.dark : ThemeMode.light);
  }

  void changeTheme(bool _isDark) async {
    isDark.value = _isDark;
    await GetStorage().write("isDark", _isDark);
    Get.changeThemeMode(_isDark ? ThemeMode.dark : ThemeMode.light);
    update();
  }
}
