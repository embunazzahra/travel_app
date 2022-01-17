import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/cubit/auth_cubit.dart';
import '../../shared/theme.dart';
import '../../ui/widgets/custom_text_form_field.dart';
import '../../ui/widgets/custom_button.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({Key? key}) : super(key: key);

  final TextEditingController nameController = TextEditingController(text: '');
  final TextEditingController emailController = TextEditingController(text: '');
  final TextEditingController passwordController =
      TextEditingController(text: '');
  final TextEditingController hobbyController = TextEditingController(text: '');

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
      Widget nameInput() => CustomTextFormField(
            title: 'Full Name',
            hintText: 'Your name',
            controller: nameController,
          );

      Widget emailInput() => CustomTextFormField(
            title: 'Email Address',
            hintText: 'Your email address',
            controller: emailController,
          );

      Widget passwordInput() => CustomTextFormField(
            title: 'Password',
            hintText: 'Your password',
            obscureText: true,
            controller: passwordController,
          );
      Widget hobbyInput() => CustomTextFormField(
            title: 'Hobby',
            hintText: 'Your hobby',
            controller: hobbyController,
          );
      Widget signUpButton() => BlocConsumer<AuthCubit, AuthState>(
            listener: (context, state) {
              if (state is AuthSuccess) {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/bonus-saldo-page', (route) => false);
              } else if (state is AuthFailed) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    backgroundColor: kPinkColor, content: Text(state.error)));
              }
            },
            builder: (context, state) {
              if (state is AuthLoading) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }

              return CustomButton(
                title: 'Get Started',
                onPressed: () {
                  context.read<AuthCubit>().signUp(
                      email: emailController.text,
                      password: passwordController.text,
                      name: nameController.text,
                      hobby: hobbyController.text);
                },
                width: 287,
                margin: EdgeInsets.only(top: 10),
              );
            },
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
