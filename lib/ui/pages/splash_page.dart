import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/cubit/auth_cubit.dart';
import '../../shared/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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

      //for knowing if there's active user
      User? user = FirebaseAuth.instance.currentUser;
      if (user == null) {
        Navigator.pushNamedAndRemoveUntil(
            context, '/get-started-page', (route) => false);
      } else {
        context.read<AuthCubit>().getCurrentUser(user.uid);
        Navigator.pushNamedAndRemoveUntil(
            context, '/main-page', (route) => false);
      }
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
