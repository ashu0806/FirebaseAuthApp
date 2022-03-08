class UserModel {
  String? uid;
  String? name;
  String? email;
  String? password;

  UserModel({this.uid, this.name, this.password, this.email});

  //fetch data from the server
  factory UserModel.fromMap(map) {
    return UserModel(
      uid: map['uid'],
      name: map['name'],
      email: map['email'],
      password: map['password'],
    );
  }

  //save the data in the firestore
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'name': name,
      'email': email,
      'password': password,
    };
  }
}
