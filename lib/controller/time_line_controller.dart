import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kakaostory/model/kakao/feed.dart';
import 'package:kakaostory/utils/story_api.dart';

class TimeLineController extends GetxController {
  final Rx<ScrollController> scrollController = ScrollController().obs;

  final RxList<Feed> _feeds = <Feed>[].obs;
  RxList<Feed> get feeds => _feeds;

  String latestFeed = "";

  @override
  void onReady() async {
    super.onReady();
    await refreshTimeLine();
  }

  @override
  void onInit() {
    super.onInit();

    scrollController.value.addListener(() async {
      if (scrollController.value.position.pixels == scrollController.value.position.maxScrollExtent) {
        await getNextTimeLine();
      }
    });
  }

  Future<bool> getNextTimeLine() async {
    List<Feed> nextTimeLine = await StoryApi.getFeeds(id: latestFeed);
    _feeds.addAll(nextTimeLine);
    latestFeed = _feeds[_feeds.length - 1].id!;
    return Future.value(true);
  }

  Future<bool> refreshTimeLine() async {
    _feeds.assignAll(await StoryApi.getFeeds());
    latestFeed = _feeds[_feeds.length - 1].id!;
    return Future.value(true);
  }
}
