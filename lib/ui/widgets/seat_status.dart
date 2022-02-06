import 'package:flutter/material.dart';
import 'package:travel_app/cubit/seat_cubit.dart';
import 'package:travel_app/shared/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SeatStatus extends StatelessWidget {
  final int status;
  final String id;
  //status: 1. Available 2. Selected 3. Unavailable

  const SeatStatus({Key? key, required this.status, required this.id})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color backgroundColor() {
      switch (status) {
        case 1:
          return kAvailableColor;
        case 2:
          return kPurpleColor;
        case 3:
          return kUnvailableColor;
        default:
          return kUnvailableColor;
      }
    }

    Color borderColor() {
      switch (status) {
        case 1:
          return kPurpleColor;
        case 2:
          return kPurpleColor;
        case 3:
          return kUnvailableColor;
        default:
          return kUnvailableColor;
      }
    }

    Widget child() {
      switch (status) {
        case 1:
          return SizedBox();
        case 2:
          return Center(
              child: Text(
            'YOU',
            style: whiteFont.copyWith(fontWeight: semiBold),
          ));
        case 3:
          return SizedBox();
        default:
          return SizedBox();
      }
    }

    return GestureDetector(
      onTap: () {
        context.read<SeatCubit>().selectSeat(id);
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
