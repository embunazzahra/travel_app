import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:travel_app/models/destination_model.dart';

class DestinationService {
  CollectionReference _destinationRef =
      FirebaseFirestore.instance.collection('destinations');

  Future<List<DestinationModel>> fetchDestinations() async {
    try {
      QuerySnapshot result = await _destinationRef.get();
    } catch (e) {
      throw e;
    }
  }
}
