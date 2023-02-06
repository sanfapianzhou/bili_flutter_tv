//个数 数量级转换 三级  无  万  亿
orderOfMagnitudeChange(int number) {
  List omlist = ["", "万", "亿"];
  String? orderm = number.toString();
  int omInt = orderm.length ~/ 5;
  return omInt > 0
      ? (number / (omInt * 10000)).toStringAsFixed(1).toString() + omlist[omInt]
      : number.toString();
}
// 视频单元 标题 不超过2行
