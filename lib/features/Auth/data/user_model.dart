class UserModel {
  final String uid;
  final String fName;
  final String lName;
  final String email;
  final String password;
  UserModel({
    this.uid = '',
    required this.fName,
    required this.lName,
    required this.email,
    required this.password,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      uid: json['uid'] as String,
      fName: json['fName'] as String,
      lName: json['lName'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'uid': uid,
      'fName': fName,
      'lName': lName,
      'email': email,
      'password': password,
    };
  }
}
