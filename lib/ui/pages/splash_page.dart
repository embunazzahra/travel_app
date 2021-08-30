import 'dart:async';

import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      /*Navigator.push(
          context, MaterialPageRoute(builder: (context) => GetStartedPage()));*/
      Navigator.pushNamed(context, '/get-started-page');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPurpleColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                //ukuran logo pesawat 100 x 100
                height: 100,
                width: 100,
                //jarak dengan tulisan bawahnya adalah 48
                margin: EdgeInsets.only(bottom: 48),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/icon_logo.png')),
                ),
              ),
              //pakai styling dari theme.dart dan di variasiin lagi (use copyWith)
              /*buat konfigurasi letter spacing caranya adalah font size dikali dengan persentase
              letter spacing di figma. font: 32, letter spacing 31,5%. maka jadinya adalah 10.8*/
              Text(
                'AIRPLANE',
                style: whiteFont.copyWith(
                    fontSize: 32, letterSpacing: 10.8, fontWeight: medium),
              )
            ],
          ),
        ));
  }
}
