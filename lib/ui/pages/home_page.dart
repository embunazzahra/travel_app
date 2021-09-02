import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  Widget header() {
    return Container(
      margin:
          EdgeInsets.only(right: defaultMargin, left: defaultMargin, top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Howdy,\nKezia Anne',
                      style: blackFont.copyWith(
                          fontSize: 24, fontWeight: semiBold),
                    ),
                  ],
                ),
              ),
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 5,
                      color: kWhiteColor,
                    ),
                    image: DecorationImage(
                        image: AssetImage('assets/image_profile.png'))),
              )
            ],
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            'Where to fly today?',
            style: greyFont.copyWith(fontWeight: light, fontSize: 16),
          )
        ],
      ),
    );
  }

  Widget destinationSection() {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: defaultMargin, vertical: 30),
          padding: EdgeInsets.only(top: 10, right: 10, left: 10, bottom: 20),
          width: 200,
          height: 323,
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(defaultRadius),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 180,
                height: 220,
                margin: EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(defaultRadius),
                    image: DecorationImage(
                        image: AssetImage('assets/image_1.png'))),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 54.5,
                    height: 30,
                    decoration: BoxDecoration(
                        color: kWhiteColor,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(defaultRadius))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 24,
                          width: 24,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/icon_star.png'))),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '4.8',
                              style: blackFont.copyWith(
                                  fontWeight: medium, fontSize: 14),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, bottom: 5),
                child: Text(
                  'Lake Ciliwung',
                  style: blackFont.copyWith(fontSize: 18, fontWeight: medium),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(
                  'Tangerang',
                  style: greyFont.copyWith(fontWeight: light),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        header(),
        destinationSection(),
      ],
    );
  }
}
