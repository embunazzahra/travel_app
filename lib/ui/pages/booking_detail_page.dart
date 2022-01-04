import 'package:flutter/material.dart';
import 'package:travel_app/shared/theme.dart';
import 'package:travel_app/ui/widgets/booking_detail_item.dart';
import 'package:travel_app/ui/widgets/custom_button.dart';

class BookingDetailPage extends StatelessWidget {
  const BookingDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget planePath() {
      return Container(
        margin:
            EdgeInsets.only(top: 50, right: defaultMargin, left: defaultMargin),
        child: Column(
          children: [
            Container(
              width: 291,
              height: 65,
              margin: EdgeInsets.only(bottom: 10),
              child: Image.asset('assets/icon_travel.png'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'CGK',
                  style: blackFont.copyWith(fontSize: 24, fontWeight: semiBold),
                ),
                Text(
                  'TLC',
                  style: blackFont.copyWith(fontSize: 24, fontWeight: semiBold),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Tangerang',
                  style: greyFont,
                ),
                Text(
                  'Ciliwung',
                  style: greyFont,
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget bookingDetails() {
      return Container(
        margin: EdgeInsets.symmetric(vertical: 30, horizontal: defaultMargin),
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //pict and stars
            Row(children: [
              Container(
                width: 70,
                height: 70,
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(defaultRadius),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/image_1.png'))),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Lake Ciliwung',
                    style: blackFont.copyWith(fontSize: 18, fontWeight: medium),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Tangerang',
                    style: greyFont.copyWith(fontWeight: light),
                  ),
                ],
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 20,
                    width: 20,
                    margin: EdgeInsets.only(right: 2),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/icon_star.png'))),
                  ),
                  Text(
                    '4.8',
                    style: blackFont.copyWith(fontWeight: medium, fontSize: 14),
                  ),
                ],
              ),
            ]),
            SizedBox(
              height: 20,
            ),
            //Booking Details
            Text(
              'Booking Details',
              style: blackFont.copyWith(fontSize: 16, fontWeight: semiBold),
            ),
            BookingDetailItem(
                title: 'Traveler',
                valueText: '2 person',
                valueColor: kBlackColor),
            BookingDetailItem(
                title: 'Seat', valueText: 'A3, B3', valueColor: kBlackColor),
            BookingDetailItem(
                title: 'Insurance', valueText: 'YES', valueColor: kGreenColor),
            BookingDetailItem(
                title: 'Refundable', valueText: 'NO', valueColor: kPinkColor),
            BookingDetailItem(
                title: 'VAT', valueText: '45%', valueColor: kBlackColor),
            BookingDetailItem(
                title: 'Price',
                valueText: 'IDR 8.500.690',
                valueColor: kBlackColor),
            BookingDetailItem(
                title: 'Grand Total',
                valueText: 'IDR 12.000.000',
                valueColor: kPurpleColor),
          ],
        ),
      );
    }

    Widget paymentDetails() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: defaultMargin),
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Payment Details',
              style: blackFont.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 16),
                  width: 100,
                  height: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(defaultRadius),
                      image: DecorationImage(
                          image: AssetImage('assets/icon_balance.png'))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 6),
                        width: 24,
                        height: 24,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/icon_logo.png'))),
                      ),
                      Text(
                        'Pay',
                        style: whiteFont.copyWith(
                            fontSize: 16, fontWeight: medium),
                      )
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'IDR 80.400.000',
                      style:
                          blackFont.copyWith(fontSize: 18, fontWeight: medium),
                    ),
                    Text(
                      'Current Balance',
                      style: greyFont,
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      );
    }

    Widget tac() {
      return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(bottom: 30),
        child: Text(
          'Terms and Conditions',
          style: greyFont.copyWith(
              fontSize: 16,
              fontWeight: light,
              decoration: TextDecoration.underline),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        children: [
          planePath(),
          bookingDetails(),
          paymentDetails(),
          CustomButton(
            title: 'Pay Now',
            onPressed: () {
              Navigator.pushNamed(context, '/success-checkout-page');
            },
            width: 327,
            margin: EdgeInsets.symmetric(horizontal: 24, vertical: 30),
          ),
          tac(),
        ],
      ),
    );
  }
}
