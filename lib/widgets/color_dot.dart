import 'package:flutter/material.dart';

import '../constants.dart';

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key? key,
    this.fillcolor,
    this.isSelected = false,
  }) : super(key: key);
  final Color? fillcolor;
  final bool? isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: kDefaultPadding / 2.5,
      ),
      padding: EdgeInsets.all(3.0),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
            color: isSelected != null && isSelected == true
                ? kTextLightColor
                : Colors.transparent),
      ),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: fillcolor,
        ),
      ),
    );
  }
}