import 'package:flutter/material.dart';
import 'package:travel_app/cubit/page_cubit.dart';
import 'package:travel_app/shared/theme.dart';
import 'package:travel_app/ui/widgets/custom_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SuccessCheckoutPage extends StatelessWidget {
  const SuccessCheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                width: 300,
                height: 150,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/icon_booked.png')))),
            SizedBox(
              height: 80,
            ),
            Text(
              'Well Booked 😍',
              style: blackFont.copyWith(fontSize: 32, fontWeight: semiBold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Are you ready to explore the new\nworld of experiences?',
              style: greyFont.copyWith(fontSize: 16, fontWeight: light),
              textAlign: TextAlign.center,
            ),
            CustomButton(
              title: 'My Bookings',
              onPressed: () {
                context.read<PageCubit>().setPage(1);
              },
              width: 220,
              margin: EdgeInsets.only(top: 50),
            )
          ],
        ),
      ),
    );
  }
}
