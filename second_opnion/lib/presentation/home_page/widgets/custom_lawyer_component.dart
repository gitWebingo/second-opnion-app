import 'package:flutter/material.dart';
import 'package:second_opnion/core/constants/color_constants.dart';

class CustomLawyerComponent extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String desc;
  const CustomLawyerComponent(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.desc});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              width: 140,
              decoration: BoxDecoration(color: ColorConstant.scaffoldColor),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      imageUrl,
                      width: 180,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              left: 10,
              right: 10,
              child: MaterialButton(
                onPressed: () {},
                minWidth: 90,
                elevation: 0,
                height: 30,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14)),
                color: ColorConstant.secondaryColor,
                child: Text("Chat Now",
                    style: TextStyle(color: ColorConstant.scaffoldColor)),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Text(title,
            style: TextStyle(
                color: ColorConstant.textColor, fontWeight: FontWeight.w500)),
        Text(desc,
            style: TextStyle(
                color: ColorConstant.greyTextColor,
                fontWeight: FontWeight.w500,
                fontSize: 10)),
      ],
    );
  }
}
