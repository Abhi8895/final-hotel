import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotel_booking/screens/loginscreen.dart';
import 'package:hotel_booking/utils/auth_controller.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  get img => null;

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var emailController = TextEditingController();
    var passwordController = TextEditingController();

    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                width: w,
                height: h * 0.30,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/signup.png"),
                        fit: BoxFit.cover)),
                child: Column(children: [
                  SizedBox(
                    height: h * 0.15,
                  ),
                  const CircleAvatar(
                    backgroundColor: Colors.white70,
                    radius: 60,
                    backgroundImage: AssetImage("assets/images/profile.png"),
                  )
                ])),
            Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                width: w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    Container(
                      decoration:
                          BoxDecoration(color: Colors.white, boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 7,
                            offset: const Offset(1, 1),
                            color: Colors.grey.withOpacity(0.2))
                      ]),
                      child: TextField(
                          controller: emailController,
                          decoration: InputDecoration(
                              hintText: "Email",
                              prefixIcon: const Icon(Icons.email,
                                  color: Colors.deepOrangeAccent),
                              focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.white, width: 1.0)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: const BorderSide(
                                      color: Colors.white, width: 1.0)),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30)))),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration:
                          BoxDecoration(color: Colors.white, boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 7,
                            offset: const Offset(1, 1),
                            color: Colors.grey.withOpacity(0.2))
                      ]),
                      child: TextField(
                          controller: passwordController,
                          obscureText: true,
                          decoration: InputDecoration(
                              hintText: "Password",
                              prefixIcon: const Icon(Icons.password,
                                  color: Colors.deepOrangeAccent),
                              focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.white, width: 1.0)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: const BorderSide(
                                      color: Colors.white, width: 1.0)),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30)))),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          AuthController.instance
                              .register(emailController.text.trim(),
                                  passwordController.text.trim())
                              .then((value) => Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginPage())));
                          ;
                        },
                        child: Container(
                            width: w * 0.5,
                            height: h * 0.08,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                image: const DecorationImage(
                                    image: AssetImage(
                                        "assets/images/loginbtn.png"),
                                    fit: BoxFit.cover)),
                            child: const Center(
                              child: Text(
                                "Sign up",
                                style: TextStyle(
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    RichText(
                        text: TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = () => Get.back(),
                            text: "have an account?",
                            style: TextStyle(
                                fontSize: 20, color: Colors.grey[500]))),
                    SizedBox(
                      height: 70,
                    ),
                    Center(
                      child: RichText(
                          text: TextSpan(
                        text: "",
                        style: TextStyle(color: Colors.grey[500], fontSize: 15),
                      )),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
