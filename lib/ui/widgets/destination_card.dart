import 'package:flutter/material.dart';
import 'package:travel_app/models/destination_model.dart';
import 'package:travel_app/ui/pages/detail_page.dart';
import '../../shared/theme.dart';

class DestinationCard extends StatelessWidget {
  final DestinationModel destinations;

  // final String name;
  // final String city;
  // final String imgUrl;
  // final double rating;
  // final bool isLastCard;

  const DestinationCard(
    this.destinations, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => DetailPage(destinations)));
      },
      child: Container(
        margin:
            EdgeInsets.only(left: defaultMargin, top: 30, bottom: 30, right: 0),
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
                      image: NetworkImage(destinations.imageUrl))),
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
                      SizedBox(
                        width: 1,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            destinations.rating.toString(),
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
                destinations.name,
                style: blackFont.copyWith(fontSize: 18, fontWeight: medium),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Text(
                destinations.city,
                style: greyFont.copyWith(fontWeight: light),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
