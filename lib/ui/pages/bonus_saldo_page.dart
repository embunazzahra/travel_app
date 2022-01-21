import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/cubit/auth_cubit.dart';
import 'package:travel_app/ui/widgets/custom_button.dart';
import '../../shared/theme.dart';

class BonusSaldoPage extends StatelessWidget {
  const BonusSaldoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget bonusBox() {
      return BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          if (state is AuthSuccess) {
            return Container(
              margin: EdgeInsets.only(top: 151),
              width: 300,
              height: 211,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: kPurpleColor.withOpacity(0.5),
                      offset: Offset(0, 10),
                      blurRadius: 75,
                    )
                  ],
                  image: DecorationImage(
                      image: AssetImage('assets/icon_balance.png'))),
              padding: EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Name',
                              style: whiteFont.copyWith(
                                  fontSize: 14, fontWeight: light),
                            ),
                            Text(
                              state.user.name,
                              style: whiteFont.copyWith(
                                  fontSize: 20, fontWeight: medium),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
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
          } else {
            return SizedBox();
          }
        },
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
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/main-page', (route) => false);
                },
                width: 220,
              )
            ],
          ),
        ),
      ),
    );
  }
}
