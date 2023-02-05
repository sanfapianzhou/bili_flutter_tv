import 'package:bilitv/module/video_about.dart';
import 'package:bilitv/until/quantity.dart';
import 'package:bilitv/until/time.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class VideoCell extends StatelessWidget {
  //视频相关，up主信息
  final Map videoInfo;

  const VideoCell(this.videoInfo, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(bottom: 10),
        width: 400,
        height: 260,
        color: Colors.white,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 350,
                height: 150,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(videoInfo['pic']))),
                child: Container(
                  height: 20,
                  width: 350,
                  decoration:
                      BoxDecoration(color: Color.fromRGBO(0, 0, 0, 0.5)),
                  child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MoreInRow([
                        const Icon(IconData(0xe6e6, fontFamily: 'vanfont'),
                            size: 20, color: Colors.white),
                        PrePicInline(
                          orderOfMagnitudeChange(videoInfo["stat"]['view']),
                        )
                      ]),
                      MoreInRow([
                        const Icon(IconData(0xe6e7, fontFamily: 'vanfont'),
                            size: 20, color: Colors.white),
                        PrePicInline(orderOfMagnitudeChange(
                            videoInfo["stat"]['danmaku']))
                      ]),
                      PrePicInline(secondsChangeDuration(videoInfo['duration']))
                    ],
              ),
            ),
          ),
          PicCellInline(videoInfo['title']),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MoreInRow([
                    const Icon(IconData(0xe723, fontFamily: 'vanfont'),
                        size: 22, color: Colors.grey),
                    PicCellInline(videoInfo['owner']["name"]),
                  ]),
                  PicCellInline(
                    secondsChangeEpoch(videoInfo['pubdate'] * 1000)
                        .split(" ")[0],
                  ),
                ],
              )
        ]));
  }
}
