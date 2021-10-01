import 'package:flutter/material.dart';

import '../constants.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({
    Key? key,
    required this.size,
    this.image,
  }) : super(key: key);

  final Size size;

  final String? image;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
      height: size.width * 0.8,
      decoration: BoxDecoration(
          // color: Colors.black,
          ),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: size.width * 0.7,
            width: size.width * 0.7,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: Image(
              image: AssetImage(this.image as String),
              height: size.width * .75,
              width: size.width * .75,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
