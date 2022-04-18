import 'package:firebase_auth/firebase_auth.dart';

class UserProvider {
  String? email;
  String? password;

  UserProvider(this.email, this.password);

  Map<String, dynamic> toMap() {
    return {
      'user_id': FirebaseAuth.instance.currentUser?.uid,
      'email': email,
      'password': password,
    };
  }
}
