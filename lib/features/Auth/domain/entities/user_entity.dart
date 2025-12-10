class UserEntity {
  final String uid;
  final String fName;
  final String lName;
  final String email;
  final String password;
  UserEntity({
    this.uid = '',
    required this.fName,
    required this.lName,
    required this.email,
    required this.password,
  });
}
