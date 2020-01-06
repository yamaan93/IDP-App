import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:idp_app/models/project.dart';
import 'package:idp_app/models/user.dart';

class DataBaseService {
  final String uid;
  DataBaseService({this.uid});

  //collection reference
  final CollectionReference userCollection =
      Firestore.instance.collection('Users');
  final CollectionReference projectsCollection =
      Firestore.instance.collection('Projects');

  Future updateUserData(
    String name,
    List<int> projects,
  ) async {
    return await userCollection.document(uid).setData({
      'name': name,
      'projects': projects,
    });
  }

  //project list from snapshot
  List<Project> _projectListFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.documents.map((doc) {
      return Project(
          name: doc.data['name'] ?? '', owner: doc.data['owner'] ?? '');
    }).toList();
  }

// user data from snapshot
  UserData _userDataFromSnapshot(DocumentSnapshot snapshot) {
    return UserData(
      uid: uid,
      name: snapshot.data['name'],
    );
  }

  //get database stream
  Stream<QuerySnapshot> get userInfo {
    return userCollection.snapshots();
  }

  Stream<List<Project>> get projectsAvalible {
    return projectsCollection.snapshots().map(_projectListFromSnapshot);
  }

  //get user document stream
  Stream<UserData> get userData {
    return userCollection.document(uid).snapshots().map(_userDataFromSnapshot);
  }
}
