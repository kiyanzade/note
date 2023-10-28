import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 5), () async {
      navigationPage();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 110,
          ),
          Image.asset(
            'assets/images/splashIcon.png',
            width: 300,
          ),
          const SizedBox(
            height: 150,
          ),
          AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText(
                "Notely".toUpperCase(),
                textStyle: Theme.of(context).textTheme.titleMedium,
                speed: const Duration(milliseconds: 150),
              ),
            ],
            totalRepeatCount: 1,
          ),
          const Spacer(),
          SpinKitThreeBounce(
            color: Theme.of(context).primaryColor,
            size: 20,
          ),
          const SizedBox(
            height: 32,
          )
        ],
      ),
    );
  }

  void navigationPage() {
    final String token = GetStorage().read('token') ?? '';
    final String refreshToken = GetStorage().read('refreshToken') ?? '';
    if (token.isNotEmpty && refreshToken.isNotEmpty) {
      Get.offAllNamed('/mainScreen');
    } else {
      Get.offAllNamed('/getStartedScreen');
    }
  }
}
