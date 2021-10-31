import 'package:flutter/material.dart';
import 'package:travel_app/shared/theme.dart';

class InterestChecked extends StatelessWidget {
  final String interest;

  const InterestChecked({Key? key, required this.interest}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Container(
            width: 16,
            height: 16,
            margin: EdgeInsets.only(right: 6),
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/icon_check.png'))),
          ),
          Text(
            interest,
            style: blackFont,
          ),
        ],
      ),
    );
  }
}
