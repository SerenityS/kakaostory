import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:get/get.dart';
import 'package:kakaostory/const/kakao_urls.dart' as KakaoUrl;
import 'package:kakaostory/controller/auth_controller.dart';
import 'package:kakaostory/view/time_line_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  InAppWebViewController? webViewController;
  InAppWebViewGroupOptions options = InAppWebViewGroupOptions(
    android: AndroidInAppWebViewOptions(
      useHybridComposition: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("카카오스토리 로그인")),
      body: InAppWebView(
          initialUrlRequest: URLRequest(url: Uri.parse(KakaoUrl.loginUrl)),
          onWebViewCreated: (controller) async {
            webViewController = controller;
          },
          onLoadStop: (controller, url) async {
            if (url!.host.contains("story.kakao.com")) {
              await AuthController.instance.saveCookies();
              Get.offAll(() => TimeLineView());
            }
          }),
    );
  }
}
