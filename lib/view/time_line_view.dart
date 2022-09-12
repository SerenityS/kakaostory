import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kakaostory/controller/time_line_controller.dart';
import 'package:kakaostory/model/kakao/feed.dart';
import 'package:kakaostory/utils/utils.dart';

class TimeLineView extends StatelessWidget {
  TimeLineView({super.key});

  final TimeLineController _timeLineController = Get.put(TimeLineController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => ListView.builder(
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
                            child: Text(feed.content!),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Wrap(
                              spacing: 5,
                              children: [
                                feed.liked! ? const Icon(Icons.favorite) : const Icon(Icons.favorite_outline),
                                Text(feed.likeCount.toString()),
                                const Icon(Icons.chat_bubble_outline),
                                Text(feed.commentCount.toString()),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (() async => await _timeLineController.refreshTimeLine())),
    );
  }
}
