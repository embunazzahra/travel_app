import 'package:flutter/material.dart';
import 'package:travel_app/shared/theme.dart';
import 'package:travel_app/ui/widgets/custom_button.dart';
import 'package:travel_app/ui/widgets/seat_status.dart';

class ChooseSeatPage extends StatelessWidget {
  const ChooseSeatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(top: 30, bottom: 46, left: 24, right: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //TITLE
                Text(
                  'Select Your\nFavorite Seat',
                  style: blackFont.copyWith(fontSize: 24, fontWeight: semiBold),
                ),
                SizedBox(
                  height: 30,
                ),

                //AVAILABLE, SELECTED, UNAVAILABALE ICON
                Row(
                  children: [
                    //AVAILABLE
                    Container(
                      width: 16,
                      height: 16,
                      margin: EdgeInsets.only(right: 6),
                      decoration: BoxDecoration(
                          color: kAvailableColor,
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            color: kPurpleColor,
                            width: 1,
                          )),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      child: Text(
                        'Available',
                        style: blackFont,
                      ),
                    ),

                    //SELECTED
                    Container(
                      width: 16,
                      height: 16,
                      margin: EdgeInsets.only(right: 6),
                      decoration: BoxDecoration(
                          color: kPurpleColor,
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            color: kPurpleColor,
                            width: 1,
                          )),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      child: Text(
                        'Selected',
                        style: blackFont,
                      ),
                    ),

                    //UNAVAILABLE
                    Container(
                      width: 16,
                      height: 16,
                      margin: EdgeInsets.only(right: 6),
                      decoration: BoxDecoration(
                          color: kUnvailableColor,
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            color: kUnvailableColor,
                            width: 1,
                          )),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      child: Text(
                        'Unavailable',
                        style: blackFont,
                      ),
                    ),
                  ],
                ),

                //MAIN SEAT PAGE
                Container(
                  margin: EdgeInsets.symmetric(vertical: 30),
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 22, vertical: 30),
                  decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.circular(defaultRadius),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 48,
                            height: 48,
                            child: Center(
                              child: Text(
                                'A',
                                style: greyFont.copyWith(fontSize: 16),
                              ),
                            ),
                          ),
                          Container(
                            width: 48,
                            height: 48,
                            child: Center(
                              child: Text(
                                'B',
                                style: greyFont.copyWith(fontSize: 16),
                              ),
                            ),
                          ),
                          Container(
                            width: 48,
                            height: 48,
                            child: Center(
                              child: Text(
                                '',
                                style: greyFont.copyWith(fontSize: 16),
                              ),
                            ),
                          ),
                          Container(
                            width: 48,
                            height: 48,
                            child: Center(
                              child: Text(
                                'C',
                                style: greyFont.copyWith(fontSize: 16),
                              ),
                            ),
                          ),
                          Container(
                            width: 48,
                            height: 48,
                            child: Center(
                              child: Text(
                                'D',
                                style: greyFont.copyWith(fontSize: 16),
                              ),
                            ),
                          ),
                        ],
                      ),
                      //first line seat
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SeatStatus(status: 3),
                          SeatStatus(status: 3),
                          Container(
                            width: 48,
                            height: 48,
                            child: Center(
                              child: Text(
                                '1',
                                style: greyFont.copyWith(fontSize: 16),
                              ),
                            ),
                          ),
                          SeatStatus(status: 1),
                          SeatStatus(status: 3),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      //second line seat
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SeatStatus(status: 1),
                          SeatStatus(status: 1),
                          Container(
                            width: 48,
                            height: 48,
                            child: Center(
                              child: Text(
                                '2',
                                style: greyFont.copyWith(fontSize: 16),
                              ),
                            ),
                          ),
                          SeatStatus(status: 1),
                          SeatStatus(status: 3),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      //third line seat
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SeatStatus(status: 2),
                          SeatStatus(status: 2),
                          Container(
                            width: 48,
                            height: 48,
                            child: Center(
                              child: Text(
                                '3',
                                style: greyFont.copyWith(fontSize: 16),
                              ),
                            ),
                          ),
                          SeatStatus(status: 1),
                          SeatStatus(status: 1),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      //fourth line seat
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SeatStatus(status: 1),
                          SeatStatus(status: 3),
                          Container(
                            width: 48,
                            height: 48,
                            child: Center(
                              child: Text(
                                '4',
                                style: greyFont.copyWith(fontSize: 16),
                              ),
                            ),
                          ),
                          SeatStatus(status: 1),
                          SeatStatus(status: 1),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      //fifth line seat
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SeatStatus(status: 1),
                          SeatStatus(status: 1),
                          Container(
                            width: 48,
                            height: 48,
                            child: Center(
                              child: Text(
                                '5',
                                style: greyFont.copyWith(fontSize: 16),
                              ),
                            ),
                          ),
                          SeatStatus(status: 3),
                          SeatStatus(status: 1),
                        ],
                      ),
                      //YOUR SEAT
                      Container(
                        margin: EdgeInsets.only(top: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Your seat',
                              style: greyFont.copyWith(fontWeight: light),
                            ),
                            Text(
                              'A3, B3',
                              style: blackFont.copyWith(
                                  fontSize: 16, fontWeight: medium),
                            )
                          ],
                        ),
                      ),
                      //TOTAL
                      Container(
                        margin: EdgeInsets.only(top: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Total',
                              style: greyFont.copyWith(fontWeight: light),
                            ),
                            Text(
                              'IDR 540.000.000',
                              style: purpleFont.copyWith(
                                  fontWeight: semiBold, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                //CHECKOUT BUTTON
                CustomButton(
                  title: 'Continue to Checkout',
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
