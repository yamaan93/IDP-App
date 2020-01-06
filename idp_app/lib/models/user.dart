class User {
  final String uid;

  User({this.uid});
}

class UserData {
  final String uid;
  final String name;
  List<int> availableProjects;

  UserData({this.uid, this.name, this.availableProjects});
}
