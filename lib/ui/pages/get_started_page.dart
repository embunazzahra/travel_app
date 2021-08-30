import 'package:flutter/material.dart';
import '../../shared/theme.dart';
import '../../ui/widgets/custom_button.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/image_get started.png'))),
          ),
          Center(
            child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
              Text(
                'Fly Like a Bird',
                style: whiteFont.copyWith(fontSize: 32, fontWeight: semiBold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Explore new world with us and let\nyourself get an amazing experiences',
                style: whiteFont.copyWith(
                  fontSize: 16,
                  fontWeight: light,
                ),
                textAlign: TextAlign.center,
              ),
              CustomButton(
                title: 'Get Started',
                onPressed: () {
                  Navigator.pushNamed(context, '/sign-up-page');
                },
                width: 220,
                margin: EdgeInsets.only(top: 50, bottom: 80),
              )
            ]),
          )
        ],
      ),
    );
  }
}
