import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:travel_app/models/transaction_model.dart';

class TransactionService {
  CollectionReference _transactionReference =
      FirebaseFirestore.instance.collection('transactions');
  Future<void> createTransaction(TransactionModel transaction) async {
    try {
      _transactionReference.add({});
    } catch (e) {
      throw e;
    }
  }

  Future<UserModel> getUserById(String id) async {
    try {
      DocumentSnapshot snapshot = await _userReference.doc(id).get();
      return UserModel(
          id: id,
          email: snapshot['email'],
          name: snapshot['name'],
          hobby: snapshot['hobby'],
          balance: snapshot['balance']);
    } catch (e) {
      throw e;
    }
  }
}
