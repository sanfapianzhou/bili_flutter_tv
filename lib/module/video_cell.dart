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
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(children:[
        Container(
          width: 400,
            height: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill, image: NetworkImage(videoInfo['pic']))),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Icon(IconData(0xe6e6, fontFamily: 'vanfont'),
                    size: 20, color: Colors.white),
                Text(videoInfo["stat"]['view'].toString()),
                const Icon(IconData(0xe6e7, fontFamily: 'vanfont'),
                    size: 20, color: Colors.white),
                Text(videoInfo["stat"]['danmaku'].toString()),
                const SizedBox(
                  width: 80,
                  height: 10,
                ),
                Text(videoInfo['duration'].toString())
              ],
            ),
          ),
          Text(videoInfo['title']),
          Row(
            children: [
              const Icon(IconData(0xe6e6, fontFamily: 'vanfont'),
                  size: 20, color: Colors.white),
              Text(videoInfo['owner']["name"]),
              Text(secondsChangeEpoch(videoInfo['pubdate'] * 1000)),
            ],
          )
        ]));
  }
}
