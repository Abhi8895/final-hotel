import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hotel_booking/models/booking_provider.dart';
import 'package:hotel_booking/utils/auth_controller.dart';

class LoginPage extends StatelessWidget {
  CollectionReference hotelBookings =
      FirebaseFirestore.instance.collection('orders');

  var nameController = TextEditingController();
  var phoneController = TextEditingController();
  var adultController = TextEditingController();
  var childController = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  late BookingDetals bookingDetals;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Form(
        key: _formkey,
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                height: 250,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/background.png"),
                        fit: BoxFit.fill)),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                        left: 30,
                        width: 80,
                        height: 200,
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/light-1.png"))),
                        )),
                    Positioned(
                        left: 140,
                        width: 80,
                        height: 150,
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/light-2.png"))),
                        )),
                    Positioned(
                        right: 40,
                        top: 40,
                        width: 80,
                        height: 150,
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/clock.png"))),
                        )),
                    Positioned(
                        child: Container(
                      margin: EdgeInsets.only(top: 50),
                      child: Center(
                        child: Text(
                          "Guest Details",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ))
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromRGBO(143, 148, 251, 2),
                                blurRadius: 20.0,
                                offset: Offset(0, 10))
                          ]),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        color: Colors.grey.shade100))),
                            child: TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Name Cannot be empty";
                                }
                              },
                              controller: nameController,
                              keyboardType: TextInputType.name,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Enter Name",
                                hintStyle: TextStyle(color: Colors.grey[400]),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(8.0),
                            child: TextFormField(
                              controller: phoneController,
                              keyboardType: TextInputType.phone,
                              validator: (value) {
                                if (value?.length != 10)
                                  return "Phone Number Should be 10 Digit";
                              },
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Phone Number",
                                hintStyle: TextStyle(color: Colors.grey[400]),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(8.0),
                            child: TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Enter the Count";
                                }
                              },
                              controller: adultController,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Adults",
                                hintStyle: TextStyle(color: Colors.grey[400]),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(8.0),
                            child: TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Enter The Count";
                                }
                              },
                              controller: childController,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Child",
                                hintStyle: TextStyle(color: Colors.grey[400]),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    GestureDetector(
                      onTap: () async => validateAndSubmit(),
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(colors: [
                              Color.fromRGBO(143, 148, 251, 1),
                              Color.fromRGBO(143, 148, 251, 6),
                            ])),
                        child: Center(
                          child: Text(
                            "Confirm Booking",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Text(
                        "Back",
                        style: TextStyle(
                            color: Color.fromRGBO(143, 148, 251, 1),
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> validateAndSubmit() async {
    if (validateAndSave() == true) {
      bookingDetals = BookingDetals(
        name: nameController.text,
        number: phoneController.text,
        adults: adultController.text,
        child: childController.text,
      );
      try {
        await hotelBookings.doc().set(bookingDetals.toMap());
        _formkey.currentState?.reset();
        //await Navigator.pop(context);

      } catch (e) {
        print("Error while sign in:$e");
      }
    }
  }

  bool? validateAndSave() {
    final form = _formkey.currentState;
    if (form?.validate() == true) {
      form?.save();
      return true;
    }
    return false;
  }
}
