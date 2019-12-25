import 'package:cloud_firestore/cloud_firestore.dart';

class DataBaseService {
  final String uid;
  DataBaseService({this.uid});

  //collection reference
  final CollectionReference userCollection =
      Firestore.instance.collection('Users');

  Future updateUserData(
    String name,
    List<int> projects,
  ) async {
    print('hey guys i tried');
    return await userCollection.document(uid).setData({
      'name': name,
      'projects': projects,
    });
  }
}
