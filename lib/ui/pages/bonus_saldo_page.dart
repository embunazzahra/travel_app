import 'package:flutter/material.dart';
import 'package:travel_app/ui/widgets/custom_button.dart';
import '../../shared/theme.dart';

class BonusSaldoPage extends StatelessWidget {
  const BonusSaldoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget bonusBox() {
      return Container(
        margin: EdgeInsets.only(top: 151),
        width: 300,
        height: 211,
        decoration: BoxDecoration(
            image:
                DecorationImage(image: AssetImage('assets/icon_balance.png'))),
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name',
                      style:
                          whiteFont.copyWith(fontSize: 14, fontWeight: light),
                    ),
                    Text(
                      'Kezia Anne',
                      style:
                          whiteFont.copyWith(fontSize: 20, fontWeight: medium),
                    ),
                  ],
                ),
                SizedBox(
                  width: 81,
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 12),
                    child: Row(
                      children: [
                        Container(
                          child: Image.asset('assets/icon_logo.png'),
                          width: 24,
                          height: 24,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          'Pay',
                          style: whiteFont.copyWith(
                              fontSize: 16, fontWeight: medium),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 41,
            ),
            Text(
              'Balance',
              style: whiteFont.copyWith(fontSize: 14, fontWeight: light),
            ),
            Text(
              'IDR 280.000.000',
              style: whiteFont.copyWith(fontSize: 26, fontWeight: medium),
            )
          ],
        ),
      );
    }

    Widget bonusText() {
      return Container(
        child: Column(
          children: [
            Text(
              'Big Bonus 🎉',
              style: blackFont.copyWith(fontSize: 32, fontWeight: semiBold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'We give you early credit so that\nyou can buy a flight ticket',
              style: greyFont.copyWith(fontSize: 16, fontWeight: light),
              textAlign: TextAlign.center,
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              bonusBox(),
              SizedBox(
                height: 78,
              ),
              bonusText(),
              SizedBox(
                height: 50,
              ),
              CustomButton(
                title: 'Start Fly Now',
                onPressed: () {},
                width: 220,
              )
            ],
          ),
        ),
      ),
    );
  }
}
