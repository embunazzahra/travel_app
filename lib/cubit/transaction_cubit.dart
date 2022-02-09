import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:travel_app/models/transaction_model.dart';

part 'transaction_state.dart';

class TransactionCubit extends Cubit<TransactionState> {
  TransactionCubit() : super(TransactionInitial());

  void createTransaction(TransactionModel transaction) async {
    try {} catch (e) {
      emit(TransactionFailed(e.toString()));
    }
  }
}
