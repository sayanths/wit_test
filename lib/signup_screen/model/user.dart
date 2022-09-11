class UserModel {
  final String? name;
  final String email;
  final String password;

  UserModel({
    required this.name,
    required this.email,
    required this.password,
  });

  Map<String, dynamic> toSnapShot() {
    return {
      "name":name,
      "email": email,
      "password": password,
    };
  }
}
