import 'package:flutter/material.dart';
import 'package:travel_app/shared/theme.dart';

class BookingDetailItem extends StatelessWidget {
  final String title;
  final String valueText;
  final Color valueColor;

  const BookingDetailItem(
      {Key? key,
      required this.title,
      required this.valueText,
      required this.valueColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Container(
            width: 16,
            height: 16,
            margin: EdgeInsets.only(right: 6),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/icon_check.png'))),
          ),
          Text(
            title,
            style: blackFont,
          ),
          Spacer(),
          Text(
            valueText,
            style: blackFont.copyWith(fontWeight: semiBold, color: valueColor),
          )
        ],
      ),
    );
  }
}
