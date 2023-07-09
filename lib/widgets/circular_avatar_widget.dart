import 'package:flutter/material.dart';

class CirculatAvatarWidget extends StatelessWidget {
  const CirculatAvatarWidget({
    Key? key,
    required this.size,
    required this.borderWidth,
    required this.image,
    required this.backgroundColor,
  }) : super(key: key);

  final Size size;
  final double borderWidth;
  final String image;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width / 10,
      height: size.width / 10,
      decoration: BoxDecoration(
        color: backgroundColor,
        border: Border.all(
          width: borderWidth,
          color: const Color.fromRGBO(81, 153, 247, 1),
        ),
        borderRadius: BorderRadius.circular(50),
        image: DecorationImage(
          image: AssetImage(image),
        ),
      ),
    );
  }
}
