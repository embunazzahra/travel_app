import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'seat_state.dart';

class SeatCubit extends Cubit<List<String>> {
  SeatCubit() : super([]);

  void selectSeat(String id) {
    state.add(id);
    emit(state);
  }
}
