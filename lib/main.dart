import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note/View/get_started_screen.dart';
import 'package:note/View/login_screen.dart';
import 'package:note/View/main_screen.dart';
import 'package:note/View/splash_screen.dart';
import 'package:note/themes/controller.dart';

import 'binding.dart';
import 'themes/themes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => GetMaterialApp(
        title: 'NOTELY',
        debugShowCheckedModeBanner: false,
        theme: Themes.light,
        darkTheme: Themes.dark,
        themeMode:
            ThemeController().isDark.value ? ThemeMode.dark : ThemeMode.light,
        initialRoute: '/',
        initialBinding: Binding(),
        getPages: [
          GetPage(
            name: '/',
            page: () => const SplashScreen(),
          ),
          GetPage(
            name: '/loginScreen',
            page: () => const LoginScreen(),
          ),
          GetPage(
            name: '/mainScreen',
            page: () => const MainScreen(),
          ),
          GetPage(
            name: '/getStartedScreen',
            page: () => const GetStartedScreen(),
          )
        ],
      ),
    );
  }
}
