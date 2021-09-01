import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class CustomBottomNavigationItem extends StatelessWidget {
  const CustomBottomNavigationItem(
      {Key? key, required this.imgUrl, this.isSelected = false})
      : super(key: key);

  final String imgUrl;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      SizedBox(),
      Container(
        width: 24,
        height: 24,
        decoration:
            BoxDecoration(image: DecorationImage(image: AssetImage(imgUrl))),
      ),
      Container(
        width: 30,
        height: 2,
        decoration: BoxDecoration(
          color: isSelected ? kPurpleColor : Colors.transparent,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
      )
    ]);
  }
}
