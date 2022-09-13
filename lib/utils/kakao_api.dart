import 'package:kakaostory/const/kakao_const.dart';
import 'package:kakaostory/const/kakao_urls.dart' as KakaoUrl;
import 'package:kakaostory/controller/auth_controller.dart';
import 'package:kakaostory/model/kakao/emoticon.dart';

import 'package:requests/requests.dart';

class KakaoApi {
  static Future<EmoticonAuth> getEmoticonCredential() async {
    var result = await Requests.get(KakaoUrl.emoticonAuthUrl, headers: {
      'cookie': AuthController.instance.kakaoCookies,
      'authorization': "KakaoAK $kakaoApiKey",
      'ka': ka,
      'js-origin': KakaoUrl.mainUrl
    });
    return EmoticonAuth.fromJson(result.json());
  }

  static String getEmoticonUrl({required String id, required String resourceId}) {
    String url = KakaoUrl.emoticonUrl;
    url += "/$id/thum_${resourceId.padLeft(3, '0')}.png?";
    url += "credential=${AuthController.emoticonAuth.credential}";
    url += "&expires=${AuthController.emoticonAuth.expires}";
    url += "&allow_referer=story.kakao.com";
    url += "&signature=${AuthController.emoticonAuth.encodedSignature}";
    url += "&path=${AuthController.emoticonAuth.path}";

    return url;
  }
}
