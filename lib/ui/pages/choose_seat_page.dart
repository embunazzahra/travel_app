import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:travel_app/cubit/seat_cubit.dart';
import 'package:travel_app/models/destination_model.dart';
import 'package:travel_app/shared/theme.dart';
import 'package:travel_app/ui/pages/booking_detail_page.dart';
import 'package:travel_app/ui/widgets/custom_button.dart';
import 'package:travel_app/ui/widgets/seat_status.dart';

class ChooseSeatPage extends StatelessWidget {
  final DestinationModel destination;
  const ChooseSeatPage(this.destination, {Key? key}) : super(key: key);

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
                BlocBuilder<SeatCubit, List<String>>(
                  builder: (context, state) {
                    return Container(
                      margin: EdgeInsets.symmetric(vertical: 30),
                      width: double.infinity,
                      padding:
                          EdgeInsets.symmetric(horizontal: 22, vertical: 30),
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
                              SeatStatus(
                                id: 'A1',
                              ),
                              SeatStatus(
                                id: 'B1',
                              ),
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
                              SeatStatus(
                                id: 'C1',
                              ),
                              SeatStatus(
                                id: 'D1',
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          //second line seat
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SeatStatus(
                                id: 'A2',
                              ),
                              SeatStatus(
                                id: 'B2',
                              ),
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
                              SeatStatus(
                                id: 'C2',
                              ),
                              SeatStatus(
                                id: 'D2',
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          //third line seat
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SeatStatus(
                                id: 'A3',
                              ),
                              SeatStatus(
                                id: 'B3',
                              ),
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
                              SeatStatus(
                                id: 'C3',
                              ),
                              SeatStatus(
                                id: 'D3',
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          //fourth line seat
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SeatStatus(
                                id: 'A4',
                              ),
                              SeatStatus(
                                id: 'B4',
                              ),
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
                              SeatStatus(
                                id: 'C4',
                              ),
                              SeatStatus(
                                id: 'D4',
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          //fifth line seat
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SeatStatus(
                                id: 'A5',
                              ),
                              SeatStatus(
                                id: 'B5',
                              ),
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
                              SeatStatus(
                                id: 'C5',
                                isAvailable: false,
                              ),
                              SeatStatus(
                                id: 'D5',
                              ),
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
                                  state.join(', '),
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
                                  NumberFormat.currency(
                                          locale: 'id',
                                          symbol: 'IDR ',
                                          decimalDigits: 0)
                                      .format(state.length * destination.price),
                                  style: purpleFont.copyWith(
                                      fontSize: 16, fontWeight: semiBold),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),

                //CHECKOUT BUTTON
                CustomButton(
                  title: 'Continue to Checkout',
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BookingDetailPage()));
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
