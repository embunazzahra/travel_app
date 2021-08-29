import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.symmetric(vertical: 30),
        child: Text(
          'Join us and get\nyour next journey',
          style: blackFont.copyWith(fontSize: 24, fontWeight: semiBold),
        ),
      );
    }

    Widget inputSection() {
      Widget nameInput() {
        return Container(
          /*property: margin ada yg bottom 20 ada yg 30
          text atas, text dalem input, obscure*/
          margin: EdgeInsets.only(bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Full Name',
                style: blackFont.copyWith(fontSize: 14, fontWeight: semiBold),
              ),
              SizedBox(
                height: 6,
              ),
              TextFormField(
                cursorColor: kBlackColor,
                obscureText: false,
                decoration: InputDecoration(
                    hintText: 'Your full name',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(defaultRadius),
                        borderSide: BorderSide(color: kInactiveColor)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: kPurpleColor),
                        borderRadius: BorderRadius.circular(defaultRadius))),
              )
            ],
          ),
        );
      }

      Widget emailInput() {
        return Container(
          margin: EdgeInsets.only(bottom: 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'Email Address',
              style: blackFont.copyWith(fontSize: 14, fontWeight: semiBold),
            ),
            SizedBox(
              height: 6,
            ),
            TextFormField(
                cursorColor: kBlackColor,
                obscureText: false,
                decoration: InputDecoration(
                    hintText: 'Your email address',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(defaultRadius),
                        borderSide: BorderSide(color: kInactiveColor)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(defaultRadius),
                        borderSide: BorderSide(color: kPurpleColor)))),
          ]),
        );
      }

      Widget passwordInput() {
        return Container(
          margin: EdgeInsets.only(bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Password',
                style: blackFont.copyWith(fontSize: 14, fontWeight: semiBold),
              ),
              SizedBox(
                height: 6,
              ),
              TextFormField(
                obscureText: true,
                cursorColor: kBlackColor,
                decoration: InputDecoration(
                    hintText: 'Your Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(defaultRadius),
                        borderSide: BorderSide(color: kInactiveColor)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(defaultRadius),
                        borderSide: BorderSide(color: kPurpleColor))),
              ),
            ],
          ),
        );
      }

      return Container(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(defaultRadius)),
        child: Column(
          children: [nameInput(), emailInput(), passwordInput()],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
          child: ListView(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        children: [title(), inputSection()],
      )),
    );
  }
}
