import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hotel_booking/screens/loginscreen.dart';
import 'package:hotel_booking/screens/root_app.dart';

class AuthController extends GetxController {
  static AuthController instance = Get.put(AuthController());
  //Auth access Globally
  // ignore: unused_field
  late Rx<User?> _user;
  //email, password, name...
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void onReady() {
    super.onReady();
    _user = Rx<User?>(auth.currentUser);
    //user will notify
    _user.bindStream(auth.userChanges());
    ever(_user, _initialScreen);
  }

  _initialScreen(User? user) {
    if (user == null) {
      Get.offAll(() => LoginPage());
    } else {
      Get.offAll(() => RootApp());
    }
  }

  Future<void> register(String email, password) async {
    try {
      await auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } catch (e) {
      print("error by regitry in and $e");
    }
  }

  Future<void> login(String email, password) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
    } catch (e) {
      print("error by loggin in and $e");
    }
  }

  void logout() async {
    auth.signOut();
  }
}
