import 'package:get/get.dart';
import 'package:kakaostory/model/kakao/feed.dart';
import 'package:kakaostory/utils/story_api.dart';

class TimeLineController extends GetxController {
  final RxList<Feed> _feeds = <Feed>[].obs;
  RxList<Feed> get feeds => _feeds;

  @override
  void onReady() async {
    super.onReady();
    await refreshTimeLine();
  }

  Future<bool> refreshTimeLine() async {
    _feeds.assignAll(await StoryApi.getFeeds());
    return Future.value(true);
  }
}
