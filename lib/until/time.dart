//时间戳转换成时间
String secondsChangeEpoch(int time) {
  return DateTime.fromMillisecondsSinceEpoch(time).toString();
}

//秒数转换时长
String secondsChangeDuration(int time) {
  String duration = (time % 60).toString().padLeft(2, '0');
  while (time ~/ 60 > 0) {
    duration = (time ~/ 60).toString().padLeft(2, '0') + ":" + duration;
    time = time ~/ 60;
  }
  return duration;
}
