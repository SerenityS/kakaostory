import 'package:kakaostory/const/kakao_urls.dart' as KakaoUrl;
import 'package:kakaostory/controller/auth_controller.dart';
import 'package:kakaostory/model/kakao/feed.dart';
import 'package:requests/requests.dart';

class StoryApi {
  static Future<List<Feed>> getFeeds({String? id}) async {
    String feedUrl = KakaoUrl.feedUrl;
    if (id != null) {
      feedUrl = "$feedUrl?since=$id";
    }

    var result = await Requests.get(feedUrl,
        headers: {'cookie': AuthController.instance.kakaoCookies, 'x-requested-with': "XMLHttpRequest", 'x-kakao-apilevel': "49"});
    return Feeds.fromJson(result.json()).feeds!;
  }
}
