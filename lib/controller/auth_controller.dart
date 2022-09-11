import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:get/get.dart';
import 'package:kakaostory/const/kakao_urls.dart' as KakaoUrl;

class AuthController extends GetxController {
  static AuthController instance = Get.find();

  CookieManager cookieManager = CookieManager.instance();
  String kakaoCookies = "";

  saveCookies() async {
    var cookies = await cookieManager.getCookies(url: Uri.parse(KakaoUrl.mainUrl));
    for (var c in cookies) {
      kakaoCookies += "${c.name}=${c.value}; ";
    }
  }
}
