import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:kakaostory/view/login_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(microseconds: 1500), () {
      Get.off(() => const LoginView());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 254, 229, 0),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: Get.height * 0.20,
                height: Get.height * 0.20,
                child: SvgPicture.asset(
                  'assets/images/logo/icon.svg',
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: Get.width * 0.5,
                height: Get.height * 0.20,
                child: SvgPicture.asset(
                  'assets/images/logo/text.svg',
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
