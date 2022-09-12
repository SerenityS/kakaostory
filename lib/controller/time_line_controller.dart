import 'package:get/get.dart';
import 'package:kakaostory/model/kakao/feed.dart';
import 'package:kakaostory/utils/story_api.dart';

class TimeLineController extends GetxController {
  final RxList<Feed> _feeds = <Feed>[].obs;
  RxList<Feed> get feeds => _feeds;

  String latestFeed = "";

  @override
  void onReady() async {
    super.onReady();
    await refreshTimeLine();
  }

  Future<bool> refreshTimeLine() async {
    _feeds.assignAll(await StoryApi.getFeeds());
    latestFeed = _feeds[_feeds.length - 1].id!;
    return Future.value(true);
  }
}
