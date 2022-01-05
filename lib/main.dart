import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/cubit/page_cubit.dart';
import 'package:travel_app/ui/pages/detail_page.dart';
import 'package:travel_app/ui/pages/main_page.dart';
import 'package:travel_app/ui/pages/success_checkout_page.dart';
import '../../ui/pages/splash_page.dart';
import '../../ui/pages/get_started_page.dart';
import '../../ui/pages/sign_up_page.dart';
import '../../ui/pages/bonus_saldo_page.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => PageCubit())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/get-started-page': (context) => GetStartedPage(),
          '/sign-up-page': (context) => SignUpPage(),
          '/bonus-saldo-page': (context) => BonusSaldoPage(),
          '/main-page': (context) => MainPage(),
          '/detail-page': (context) => DetailPage(),
          '/success-checkout-page': (context) => SuccessCheckoutPage(),
        },
      ),
    );
  }
}
