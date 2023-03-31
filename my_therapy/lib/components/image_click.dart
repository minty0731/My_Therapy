import 'package:flutter/material.dart';

class ImageClick extends StatelessWidget {
  final void Function()? onTap;
  final double left_SizedBox;
  final double right_SizedBox;
  final double picture_height;
  final String pic_file;
  const ImageClick(
      {super.key,
      required this.pic_file,
      required this.onTap,
      this.left_SizedBox = 0,
      this.right_SizedBox = 0,
      required this.picture_height});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Row(
          children: [
            SizedBox(width: left_SizedBox),
            Image.asset(pic_file, height: picture_height),
          ],
        ));
  }
}
