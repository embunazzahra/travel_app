import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget customBottomNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 60,
          margin: EdgeInsets.only(
              bottom: 30, left: defaultMargin, right: defaultMargin),
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(defaultRadius),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(),
                    Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/icon_globe.png'))),
                    ),
                    Container(
                      width: 30,
                      height: 2,
                      decoration: BoxDecoration(
                        color: kPurpleColor,
                        borderRadius: BorderRadius.circular(defaultRadius),
                      ),
                    )
                  ]),
              Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(),
                    Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/icon_menu.png'))),
                    ),
                    Container(
                      width: 30,
                      height: 2,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(defaultRadius),
                      ),
                    )
                  ]),
              Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(),
                    Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/icon_wallet.png'))),
                    ),
                    Container(
                      width: 30,
                      height: 2,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(defaultRadius),
                      ),
                    )
                  ]),
              Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(),
                    Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/icon_settings.png'))),
                    ),
                    Container(
                      width: 30,
                      height: 2,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(defaultRadius),
                      ),
                    )
                  ])
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          customBottomNavigation(),
        ],
      ),
    );
  }
}
