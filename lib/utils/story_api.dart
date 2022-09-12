import 'package:kakaostory/const/kakao_urls.dart' as KakaoUrl;
import 'package:kakaostory/controller/auth_controller.dart';
import 'package:kakaostory/model/kakao/feed.dart';
import 'package:requests/requests.dart';

class StoryApi {
  static Future<List<Feed>> getFeeds() async {
    var result = await Requests.get(KakaoUrl.feedUrl,
        headers: {'cookie': AuthController.instance.kakaoCookies, 'x-requested-with': "XMLHttpRequest"});
    return Feeds.fromJson(result.json()).feeds!;
  }
}
