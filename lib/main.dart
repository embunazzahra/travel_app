import 'package:flutter/material.dart';
import '../../ui/pages/splash_page.dart';
import '../../ui/pages/get_started_page.dart';
import '../../ui/pages/sign_up_page.dart';
import '../../ui/pages/bonus_saldo_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => BonusSaldoPage(),
        '/get-started-page': (context) => GetStartedPage(),
        '/sign-up-page': (context) => SignUpPage(),
        '/bonus-saldo-page': (context) => BonusSaldoPage(),
      },
    );
  }
}
