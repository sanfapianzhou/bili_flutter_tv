import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*
* 继承 其他组件/
*
class PrePicInline extends Text {
  PrePicInline({
    this.TextStyle =
})

}*/
// 预览图片内文字
class PrePicInline extends StatelessWidget {
  final String data;

  const PrePicInline(this.data, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: const TextStyle(color: Colors.white, fontSize: 16),
    );
  }
}

// 视频流 单元内文字
class PicCellInline extends StatelessWidget {
  final String data;

  const PicCellInline(this.data, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(data,
        style: const TextStyle(color: Colors.black, fontSize: 20), maxLines: 2);
  }
}

//两层以上相连 中间加层size box
class MoreInRow extends StatelessWidget {
  final List<Widget> outChildren;

  const MoreInRow(this.outChildren, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int size = outChildren.length;
    outChildren.insert(1, const SizedBox(width: 5));
    return Row(
      children: outChildren,
    );
  }
}
