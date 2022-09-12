import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:get/get.dart';
import 'package:kakaostory/const/kakao_urls.dart' as KakaoUrl;
import 'package:kakaostory/model/kakao/emoticon.dart';
import 'package:kakaostory/utils/kakao_api.dart';

class AuthController extends GetxController {
  static AuthController instance = Get.find();

  CookieManager cookieManager = CookieManager.instance();
  String kakaoCookies = "";

  static EmoticonAuth emoticonAuth = EmoticonAuth();

  @override
  onReady() async {
    super.onReady();
    emoticonAuth = await KakaoApi.getEmoticonCredential();
  }

  saveCookies() async {
    var cookies = await cookieManager.getCookies(url: Uri.parse(KakaoUrl.mainUrl));
    for (var c in cookies) {
      kakaoCookies += "${c.name}=${c.value}; ";
    }
  }
}
