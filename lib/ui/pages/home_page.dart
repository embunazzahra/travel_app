import 'package:flutter/material.dart';
import 'package:travel_app/ui/widgets/destination_card.dart';
import 'package:travel_app/ui/widgets/destination_tile.dart';
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
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          DestinationCard(
            name: 'Lake Ciliwung',
            city: 'Tangerang',
            imgUrl: 'assets/image_1.png',
            rating: 4.8,
          ),
          DestinationCard(
            name: 'White Houses',
            city: 'Spain',
            imgUrl: 'assets/image_2.png',
            rating: 4.7,
          ),
          DestinationCard(
            name: 'Hill Heyo',
            city: 'Monaco',
            imgUrl: 'assets/image_3.png',
            rating: 4.8,
          ),
          DestinationCard(
            name: 'Menarra',
            city: 'Japan',
            imgUrl: 'assets/image_4.png',
            rating: 5.0,
          ),
          DestinationCard(
            name: 'Payung Teduh',
            city: 'Singapore',
            imgUrl: 'assets/image_5.png',
            rating: 4.8,
            isLastCard: true,
          ),
        ],
      ),
    );
  }

  Widget newDestination() {
    return Container(
      margin: EdgeInsets.only(
          bottom: 100, right: defaultMargin, left: defaultMargin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'New This Year',
            style: blackFont.copyWith(fontSize: 18, fontWeight: semiBold),
          ),
          DestinationTile(
            name: 'Danau Beratan',
            city: 'Singaraja',
            imageUrl: 'assets/image_6.png',
            rating: 4.5,
          ),
          DestinationTile(
            name: 'Sydney Opera',
            city: 'Australia',
            imageUrl: 'assets/image_7.png',
            rating: 4.7,
          ),
          DestinationTile(
            name: 'Roma',
            city: 'Italy',
            imageUrl: 'assets/image_11.png',
            rating: 4.8,
          ),
          DestinationTile(
            name: 'Payung Teduh',
            city: 'Singapore',
            imageUrl: 'assets/image_5.png',
            rating: 4.5,
          ),
          DestinationTile(
            name: 'Hill Hey',
            city: 'Monaco',
            imageUrl: 'assets/image_3.png',
            rating: 4.7,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        header(),
        destinationSection(),
        newDestination(),
      ],
    );
  }
}
