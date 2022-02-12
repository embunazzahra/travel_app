import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:travel_app/models/destination_model.dart';
import 'package:travel_app/shared/theme.dart';
import 'package:travel_app/ui/pages/choose_seat_page.dart';
import 'package:travel_app/ui/widgets/custom_button.dart';
import 'package:travel_app/ui/widgets/interest_checked.dart';
import 'package:travel_app/ui/widgets/photos_card.dart';

class DetailPage extends StatelessWidget {
  const DetailPage(this.destination, {Key? key}) : super(key: key);
  final DestinationModel destination;

  @override
  Widget build(BuildContext context) {
    Widget headerSection() {
      return Container(
        width: double.infinity,
        height: 450,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(destination.imageUrl), fit: BoxFit.cover)),
      );
    }

    Widget shadowPart() {
      return Container(
        height: 214,
        width: double.infinity,
        margin: EdgeInsets.only(
          top: 236,
        ),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              kBlackColor.withOpacity(0),
              Colors.black.withOpacity(0.95)
            ])),
      );
    }

    Widget contentPart() {
      return Container(
          margin: EdgeInsets.symmetric(horizontal: 24, vertical: 31),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //EMBLEM SECTION
              Container(
                width: 108,
                height: 24,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/icon_emblem.png'))),
              ),
              SizedBox(
                height: 256,
              ),

              //TITLE SECTION
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          destination.name,
                          style: whiteFont.copyWith(
                              fontSize: 24, fontWeight: semiBold),
                        ),
                        Text(
                          destination.city,
                          style: whiteFont.copyWith(
                              fontSize: 16, fontWeight: light),
                        )
                      ],
                    ),
                  ),
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
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        destination.rating.toString(),
                        style: whiteFont.copyWith(
                            fontWeight: medium, fontSize: 14),
                      ),
                    ],
                  ),
                ],
              ),

              //DESCRIPTION SECTION
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                margin: EdgeInsets.symmetric(vertical: 30),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.circular(defaultRadius)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //ABOUT SECTION
                    Text(
                      'About',
                      style: blackFont.copyWith(
                          fontSize: 16, fontWeight: semiBold),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      'Berada di jalur jalan provinsi yang menghubungkan Denpasar Singaraja serta letaknya yang dekat dengan Kebun Raya Eka Karya menjadikan tempat Bali.',
                      style: blackFont.copyWith(height: 2),
                    ),

                    //PHOTOS SECTION
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Photos',
                      style: blackFont.copyWith(
                          fontSize: 16, fontWeight: semiBold),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Row(
                      children: [
                        PhotosCard(imageUrl: 'assets/image_9.png'),
                        PhotosCard(imageUrl: 'assets/image_10.png'),
                        PhotosCard(imageUrl: 'assets/image_11.png'),
                      ],
                    ),

                    //INTERESTS SECTION
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Interests',
                      style: blackFont.copyWith(
                          fontSize: 16, fontWeight: semiBold),
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    Row(
                      children: [
                        InterestChecked(interest: 'Kids Park'),
                        InterestChecked(interest: 'Honor Bridge'),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        InterestChecked(interest: 'City Museum'),
                        InterestChecked(interest: 'Central Mall'),
                      ],
                    ),
                  ],
                ),
              ),

              //PRICE SECTION
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          NumberFormat.currency(
                                  locale: 'id',
                                  symbol: 'IDR ',
                                  decimalDigits: 0)
                              .format(destination.price),
                          style: blackFont.copyWith(
                              fontSize: 18, fontWeight: medium),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'per orang',
                          style: greyFont.copyWith(fontWeight: light),
                        )
                      ],
                    ),
                  ),
                  CustomButton(
                    title: 'Book Now',
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  ChooseSeatPage(destination)));
                    },
                    width: 170,
                  )
                ],
              ),
            ],
          ));
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            headerSection(),
            shadowPart(),
            contentPart(),
          ],
        ),
      ),
    );
  }
}
