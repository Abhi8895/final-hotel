import 'package:flutter/material.dart';
import 'package:hotel_booking/screens/root_app.dart';
import 'package:hotel_booking/screens/signup_page.dart';
import 'package:hotel_booking/utils/auth_controller.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              Container(
                  width: w,
                  height: h * 0.30,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/loginimg.png"),
                          fit: BoxFit.cover))),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                width: w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Travoma",
                      style:
                          TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Sign into Your Account",
                      style: TextStyle(fontSize: 20, color: Colors.grey[500]),
                    ),
                    const SizedBox(
                      height: 40,
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
                      child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please Enter Valid Email Address";
                            }
                          },
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
                      child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please Enter Valid Password";
                            }
                          },
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
                      height: 20,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(),
                        ),
                        Text(
                          "Forgot Your Password?",
                          style:
                              TextStyle(fontSize: 20, color: Colors.grey[500]),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          validateAndSubmit();
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
                                "Sign in",
                                style: TextStyle(
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            )),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpPage())),
                        child: Text('Dont Have an Account Tap to Create',
                            style: TextStyle(
                                fontSize: 20, color: Colors.grey[500]))),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  bool? validateAndSave() {
    final form = _formkey.currentState;
    if (form?.validate() == true) {
      form?.save();
      return true;
    }
    return false;
  }

  Future<void> validateAndSubmit() async {
    if (validateAndSave() == true) {
      try {
        await AuthController.instance
            .login(emailController.text.trim(), passwordController.text.trim());
        // if (user != null)
        //   print("regiter${emailController.text} ${passwordController.text}");

        _formkey.currentState?.reset();
        await Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => RootApp()));
      } catch (e) {
        print("Error while sign in:$e");
      }
    }
  }
}








// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:hotel_booking/screens/root_app.dart';

// class HomePage1 extends StatefulWidget {
//   const HomePage1({Key? key}) : super(key: key);

//   @override
//   State<HomePage1> createState() => _HomePageState1();
// }

// class _HomePageState1 extends State<HomePage1> {
//   Future<FirebaseApp> _initializedFirebase() async {
//     FirebaseApp firebaseApp = await Firebase.initializeApp();
//     return firebaseApp;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: FutureBuilder(
//         future: _initializedFirebase(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.done) {
//             return LoginScreen1();
//           }
//           return Center(child: CircularProgressIndicator());
//         },
//       ),
//     );
//   }
// }

// class LoginScreen1 extends StatefulWidget {
//   const LoginScreen1({Key? key}) : super(key: key);

//   @override
//   State<LoginScreen1> createState() => _LoginScreenState1();
// }

// class _LoginScreenState1 extends State<LoginScreen1> {
// //login funtion
//   static Future<User?> loginUsingEmailPassword(
//       {required String email,
//       required String password,
//       required BuildContext context}) async {
//     FirebaseAuth auth = FirebaseAuth.instance;
//     User? user;
//     try {
//       UserCredential userCredential = await auth.signInWithEmailAndPassword(
//           email: email, password: password);
//       user = userCredential.user;
//     } on FirebaseAuthException catch (e) {
//       if (e.code == "User not Found") {
//         print("No user found for that email");
//       }
//     }

//     return user;
//   }

//   @override
//   Widget build(BuildContext context) {
//     //create the textfield controller
//     TextEditingController _emailController = TextEditingController();
//     TextEditingController _passwordController = TextEditingController();
//     return Padding(
//       padding: const EdgeInsets.all(16.0),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             "Travoma",
//             style: TextStyle(
//                 color: Colors.black, fontSize: 35, fontWeight: FontWeight.bold),
//           ),
//           Text(
//             "Login To your App",
//             style: TextStyle(
//                 color: Colors.black,
//                 fontSize: 44.0,
//                 fontWeight: FontWeight.bold),
//           ),
//           SizedBox(
//             height: 44.0,
//           ),
//           TextField(
//             controller: _emailController,
//             keyboardType: TextInputType.emailAddress,
//             decoration: InputDecoration(
//                 hintText: "Email",
//                 prefixIcon: Icon(
//                   Icons.mail,
//                   color: Colors.black,
//                 )),
//           ),
//           SizedBox(
//             height: 26.0,
//           ),
//           TextField(
//             controller: _passwordController,
//             obscureText: true,
//             decoration: InputDecoration(
//                 hintText: "Password",
//                 prefixIcon: Icon(
//                   Icons.lock,
//                   color: Colors.black,
//                 )),
//           ),
//           SizedBox(
//             height: 16.0,
//           ),
//           Text(
//             "Forget Password",
//             style: TextStyle(color: Colors.blue),
//           ),
//           SizedBox(
//             height: 88.0,
//           ),
//           Container(
//             width: double.infinity,
//             child: RawMaterialButton(
//               fillColor: Color(0xFF0069FE),
//               elevation: 0.0,
//               padding: EdgeInsets.symmetric(vertical: 20.0),
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(12.0)),
//               onPressed: () async {
//                 User? user = await loginUsingEmailPassword(
//                     email: _emailController.text,
//                     password: _passwordController.text,
//                     context: context);
//                 print(user);
//                 if (user != null) {
//                   Navigator.of(context).pushReplacement(
//                       MaterialPageRoute(builder: ((context) => RootApp())));
//                 }
//               },
//               child: Text("Login",
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 18.0,
//                   )),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }