import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:travel_app/models/transaction_model.dart';
import 'package:travel_app/shared/theme.dart';

import 'booking_detail_item.dart';

class TransactionCard extends StatelessWidget {
  final TransactionModel transaction;
  const TransactionCard(this.transaction, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
}
