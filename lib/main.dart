import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:hotel_booking/screens/hotel_details.dart';
import 'package:hotel_booking/screens/loginscreen.dart';
import 'package:hotel_booking/utils/database.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Get.testMode = true;
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        //home: HomePage1()
        home: LoginPage());
  }
}












//main file


// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Hotel Booking',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const RootApp(),
//     );
//   }
// }








