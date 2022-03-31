import 'package:flutter/material.dart';
import 'package:hotel_booking/theme/colors.dart';
import 'package:hotel_booking/utils/icon_and_text_widget.dart';
import 'package:hotel_booking/utils/small_text.dart';

import 'big_text.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        BigText(
          text: text,
          size: 26,
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Wrap(
              children: List.generate(
                  5,
                  (index) => Icon(
                        Icons.star,
                        color: AppColors.mainColor,
                        size: 15,
                      )),
            ),
            const SizedBox(
              width: 10,
            ),
            SmallText(text: "4.5"),
            const SizedBox(
              width: 10,
            ),
            SmallText(text: "1287"),
            const SizedBox(
              width: 10,
            ),
            SmallText(text: "comments")
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconAndTextWidget(
                icon: Icons.wifi,
                text: "Free Wifi",
                iconColor: AppColors.iconColor1),
            IconAndTextWidget(
                icon: Icons.car_rental,
                text: "Parking",
                iconColor: AppColors.mainColor),
            IconAndTextWidget(
                icon: Icons.clean_hands,
                text: "fully Sanitized",
                iconColor: AppColors.iconColor2),
          ],
        )
      ]),
    );
  }
}
