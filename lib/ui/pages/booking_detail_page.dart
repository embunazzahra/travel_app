import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:travel_app/cubit/auth_cubit.dart';
import 'package:travel_app/cubit/transaction_cubit.dart';
import 'package:travel_app/models/transaction_model.dart';
import 'package:travel_app/shared/theme.dart';
import 'package:travel_app/ui/widgets/booking_detail_item.dart';
import 'package:travel_app/ui/widgets/custom_button.dart';

class BookingDetailPage extends StatelessWidget {
  final TransactionModel transaction;
  const BookingDetailPage(this.transaction, {Key? key}) : super(key: key);

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
                        image: NetworkImage(transaction.destination.imageUrl))),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    transaction.destination.name,
                    style: blackFont.copyWith(fontSize: 18, fontWeight: medium),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    transaction.destination.city,
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
                    transaction.destination.rating.toString(),
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
                valueText: '${transaction.amountOfTraveler} person',
                valueColor: kBlackColor),
            BookingDetailItem(
                title: 'Seat',
                valueText: transaction.selectedSeats,
                valueColor: kBlackColor),
            BookingDetailItem(
                title: 'Insurance',
                valueText: transaction.insurance ? 'YES' : 'NO',
                valueColor: transaction.insurance ? kGreenColor : kPinkColor),
            BookingDetailItem(
                title: 'Refundable',
                valueText: transaction.refundable ? 'YES' : 'NO',
                valueColor: transaction.refundable ? kGreenColor : kPinkColor),
            BookingDetailItem(
                title: 'VAT',
                valueText: '${(transaction.vat * 100).toStringAsFixed(0)}%',
                valueColor: kBlackColor),
            BookingDetailItem(
                title: 'Price',
                valueText: NumberFormat.currency(
                        locale: 'id', symbol: 'IDR ', decimalDigits: 0)
                    .format(transaction.price),
                valueColor: kBlackColor),
            BookingDetailItem(
                title: 'Grand Total',
                valueText: NumberFormat.currency(
                        locale: 'id', symbol: 'IDR ', decimalDigits: 0)
                    .format(transaction.grandTotal),
                valueColor: kPurpleColor),
          ],
        ),
      );
    }

    Widget paymentDetails() {
      return BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          if (state is AuthSuccess) {
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
                                      image:
                                          AssetImage('assets/icon_logo.png'))),
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
                            NumberFormat.currency(
                                    locale: 'id',
                                    symbol: 'IDR ',
                                    decimalDigits: 0)
                                .format(state.user.balance),
                            style: blackFont.copyWith(
                                fontSize: 18, fontWeight: medium),
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
          return SizedBox();
        },
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
          BlocConsumer<TransactionCubit, TransactionState>(
            listener: (context, state) {
              if (state is TransactionSuccess) {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/success-checkout-page', (route) => false);
              } else if (state is TransactionFailed) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text(state.error),
                  backgroundColor: kPinkColor,
                ));
              }
            },
            builder: (context, state) {
              if (state is TransactionLoading) {
                return Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(
                    top: 30,
                  ),
                  child: CircularProgressIndicator(),
                );
              }
              return CustomButton(
                title: 'Pay Now',
                onPressed: () {
                  context
                      .read<TransactionCubit>()
                      .createTransaction(transaction);
                },
                width: 327,
                margin: EdgeInsets.symmetric(horizontal: 24, vertical: 30),
              );
            },
          ),
          tac(),
        ],
      ),
    );
  }
}
