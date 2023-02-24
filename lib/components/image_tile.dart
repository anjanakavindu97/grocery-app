import 'package:flutter/material.dart';

class ImageTile extends StatelessWidget {
  const ImageTile({
    Key? key,
    required this.width,
    required this.height,
    required this.imgUrl,
  }) : super(key: key);

  final double width;
  final double height;
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: const EdgeInsets.only(right: 20),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              imgUrl,
            ),
          ),
        ],
      ),
    );
  }
}
