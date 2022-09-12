import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kakaostory/const/kakao_urls.dart' as KakaoUrl;
import 'package:kakaostory/controller/time_line_controller.dart';
import 'package:kakaostory/model/kakao/feed.dart';
import 'package:kakaostory/utils/kakao_api.dart';
import 'package:kakaostory/utils/utils.dart';

class TimeLineView extends GetView<TimeLineController> {
  TimeLineView({super.key});

  final TimeLineController _timeLineController = Get.put(TimeLineController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => ListView.builder(
          controller: _timeLineController.scrollController.value,
          itemCount: _timeLineController.feeds.length,
          itemBuilder: (context, index) {
            Feed feed = _timeLineController.feeds[index];

            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: NetworkImage(feed.actor!.profileThumbnailUrl!),
                      ),
                      const SizedBox(width: 5),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(feed.actor!.displayName!),
                          Text(Utils.getTimeString(feed.createdAt!)),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  SizedBox(
                    width: double.infinity,
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (feed.media != null)
                            CarouselSlider.builder(
                              itemCount: feed.media!.length,
                              itemBuilder: (BuildContext context, int i, int pageViewIndex) => feed.media![i].isVideo
                                  ? Stack(children: [
                                      Image.network(
                                        feed.media![i].previewUrl!,
                                        fit: BoxFit.cover,
                                        width: Get.width,
                                        height: Get.height,
                                      ),
                                      const Positioned.fill(
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Icon(
                                            Icons.play_arrow,
                                            color: Colors.white,
                                            size: 50,
                                          ),
                                        ),
                                      )
                                    ])
                                  : Image.network(
                                      feed.media![i].originUrl!,
                                      fit: BoxFit.cover,
                                      width: Get.width,
                                      height: Get.height,
                                    ),
                              options: CarouselOptions(
                                aspectRatio: feed.media![0].width!.toDouble() / feed.media![0].height!.toDouble(),
                                enableInfiniteScroll: false,
                                enlargeCenterPage: true,
                                enlargeStrategy: CenterPageEnlargeStrategy.height,
                                viewportFraction: 1.0,
                              ),
                            ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                              child: ListView.builder(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: feed.contentDecorators!.length,
                                itemBuilder: ((context, index) {
                                  if (feed.contentDecorators![index].type == "text") {
                                    return Text(feed.contentDecorators![index].text!);
                                  } else if (feed.contentDecorators![index].type == "profile") {
                                    return Text(feed.contentDecorators![index].text!);
                                  } else if (feed.contentDecorators![index].type == "emoticon") {
                                    String emoticonUrl = KakaoApi.getEmoticonUrl(
                                        id: feed.contentDecorators![index].itemId!,
                                        resourceId: feed.contentDecorators![index].resourceId!.toString());
                                    return Image.network(
                                      emoticonUrl,
                                      headers: {'Referer': KakaoUrl.mainUrl},
                                      alignment: Alignment.centerLeft,
                                      width: 100,
                                      height: 100,
                                    );
                                  } else {
                                    return const SizedBox();
                                  }
                                }),
                              ),
                            ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (() async => await _timeLineController.refreshTimeLine())),
    );
  }
}
