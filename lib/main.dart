import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kakaostory/controller/auth_controller.dart';
import 'package:kakaostory/view/splash_view.dart';

  Get.put(AuthController());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Kakao Story',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      home: const SplashView(),
    );
  }
}
