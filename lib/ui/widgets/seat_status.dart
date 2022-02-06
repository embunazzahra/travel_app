import 'package:flutter/material.dart';
import 'package:travel_app/cubit/seat_cubit.dart';
import 'package:travel_app/shared/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SeatStatus extends StatelessWidget {
  final String id;
  final bool isAvailable;
  //status: 1. Available 2. Selected 3. Unavailable

  const SeatStatus({Key? key, this.isAvailable = true, required this.id})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isSelected = context.read<SeatCubit>().isSelected(id);

    Color backgroundColor() {
      if (!isAvailable) {
        return kUnvailableColor;
      } else {
        if (isSelected)
          return kPurpleColor;
        else
          return kAvailableColor;
      }
    }

    Color borderColor() {
      if (!isAvailable) {
        return kUnvailableColor;
      } else {
        return kPurpleColor;
      }
    }

    Widget child() {
      if (isSelected) {
        return Center(
            child: Text(
          'YOU',
          style: whiteFont.copyWith(fontWeight: semiBold),
        ));
      } else {
        return SizedBox();
      }
    }

    return GestureDetector(
      onTap: () {
        if (isAvailable) context.watch<SeatCubit>().selectSeat(id);
      },
      child: Container(
        width: 48,
        height: 48,
        child: child(),
        decoration: BoxDecoration(
          color: backgroundColor(),
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: borderColor(),
            width: 2,
          ),
        ),
      ),
    );
  }
}
