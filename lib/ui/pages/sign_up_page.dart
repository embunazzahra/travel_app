import 'package:flutter/material.dart';
import '../../shared/theme.dart';
import '../../ui/widgets/custom_text_form_field.dart';
import '../../ui/widgets/custom_button.dart';

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
      Widget nameInput() =>
          CustomTextFormField(title: 'Full Name', hintText: 'Your name');

      Widget emailInput() => CustomTextFormField(
          title: 'Email Address', hintText: 'Your email address');

      Widget passwordInput() => CustomTextFormField(
            title: 'Password',
            hintText: 'Your password',
            obscureText: true,
          );
      Widget hobbyInput() =>
          CustomTextFormField(title: 'Hobby', hintText: 'Your hobby');
      Widget signUpButton() => CustomButton(
            title: 'Get Started',
            onPressed: () {
              Navigator.pushNamed(context, '/bonus-saldo-page');
            },
            width: 287,
            margin: EdgeInsets.only(top: 10),
          );

      return Container(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(defaultRadius)),
        child: Column(
          children: [
            nameInput(),
            emailInput(),
            passwordInput(),
            hobbyInput(),
            signUpButton()
          ],
        ),
      );
    }

    Widget tac() {
      return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(top: 50, bottom: 73),
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
      body: SafeArea(
          child: ListView(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        children: [title(), inputSection(), tac()],
      )),
    );
  }
}
