import 'package:flutter/material.dart';
import 'package:travel_app/cubit/page_cubit.dart';
import '../../shared/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomBottomNavigationItem extends StatelessWidget {
  const CustomBottomNavigationItem(
      {Key? key, required this.imgUrl, required this.index})
      : super(key: key);

  final String imgUrl;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<PageCubit>().setPage(index);
      },
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        SizedBox(),
        Image.asset(
          imgUrl,
          width: 24,
          height: 24,
          color: context.read<PageCubit>().state == index
              ? kPurpleColor
              : kGreyColor,
        ),
        Container(
          width: 30,
          height: 2,
          decoration: BoxDecoration(
            color: context.read<PageCubit>().state == index
                ? kPurpleColor
                : Colors.transparent,
            borderRadius: BorderRadius.circular(defaultRadius),
          ),
        )
      ]),
    );
  }
}
