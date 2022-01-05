import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/cubit/page_cubit.dart';
import 'package:travel_app/ui/pages/card_page.dart';
import 'package:travel_app/ui/pages/settings_page.dart';
import 'package:travel_app/ui/pages/transaction_page.dart';
import '../../shared/theme.dart';
import '../../ui/widgets/custom_bottom_navigation_item.dart';
import 'home_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildContent(int currentPage) {
      switch (currentPage) {
        case 0:
          return HomePage();
        case 1:
          return TransactionPage();
        case 2:
          return CardPage();
        case 3:
          return SettingsPage();
        default:
          return HomePage();
      }
    }

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
              CustomBottomNavigationItem(
                imgUrl: 'assets/icon_globe.png',
                index: 0,
              ),
              CustomBottomNavigationItem(
                imgUrl: 'assets/icon_menu.png',
                index: 1,
              ),
              CustomBottomNavigationItem(
                imgUrl: 'assets/icon_wallet.png',
                index: 2,
              ),
              CustomBottomNavigationItem(
                imgUrl: 'assets/icon_settings.png',
                index: 3,
              ),
            ],
          ),
        ),
      );
    }

    return BlocBuilder<PageCubit, int>(
      //state adalah integer nomor page dari Cubit
      builder: (context, state) {
        return Scaffold(
          backgroundColor: kBackgroundColor,
          body: Stack(
            children: [
              buildContent(state),
              customBottomNavigation(),
            ],
          ),
        );
      },
    );
  }
}
