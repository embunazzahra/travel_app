import 'package:flutter/material.dart';
import 'package:travel_app/shared/theme.dart';

class PhotosCard extends StatelessWidget {
  final String imageUrl;

  const PhotosCard({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16),
      width: 70,
      height: 70,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(defaultRadius),
          image: DecorationImage(image: AssetImage(imageUrl))),
    );
  }
}
