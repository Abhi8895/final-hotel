import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotel_booking/screens/confirmbooking.dart';
import 'package:hotel_booking/theme/colors.dart';
import 'package:hotel_booking/utils/icon_and_text_widget.dart';
import 'package:hotel_booking/widgets/app_column.dart';
import 'package:hotel_booking/widgets/big_text.dart';
import 'package:hotel_booking/widgets/app_icon.dart';

class HotelDetails extends StatelessWidget {
  final String? name;
  final String? subname;
  final String? price;
  final String? image;
  final String? description;
  HotelDetails(
      {this.name,
      this.subname,
      this.price,
      this.image,
      this.description,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: 300,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: Image.network(Uri.parse('${image}').toString())
                            .image)),
              ),
            ),
            Positioned(
              top: 45,
              left: 20,
              right: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcon(icon: Icons.arrow_back_ios),
                  AppIcon(
                    icon: Icons.confirmation_num_rounded,
                  )
                ],
              ),
            ),
            Positioned(
                top: 45,
                left: 20,
                right: 20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: AppIcon(icon: Icons.arrow_back_ios))
                  ],
                )),

            // introduction of hotel
            Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                top: 280,
                child: Container(
                  padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20),
                      ),
                      color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppColumn(text: "${name}"),
                      SizedBox(
                        height: 20,
                      ),
                      BigText(text: "${description}")
                    ],
                  ),
                )),
          ],
        ),
        bottomNavigationBar: Container(
          height: 120,
          padding: EdgeInsets.only(top: 20, bottom: 20, right: 20),
          decoration: BoxDecoration(
              color: AppColors.buttonBackgroundColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
              )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(width: 20),
                  // GestureDetector(
                  //   onTap: () => Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: ((context) => ConfirmOrder()),
                  //     ),
                  //   ),
                  //   child: IconAndTextWidget(
                  //       icon: Icons.call_outlined,
                  //       text: "Tap to Call",
                  //       iconColor: AppColors.iconColor1),
                  // ),
                  SizedBox(width: 70),
                  GestureDetector(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage())),
                    child: Container(
                      padding: EdgeInsets.only(
                          top: 20, bottom: 20, left: 20, right: 20),
                      child: Center(
                        child: BigText(
                          text: "${price}/- Per Night",
                          color: Colors.white,
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: AppColors.mainColor),
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
