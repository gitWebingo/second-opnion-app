import 'package:flutter/material.dart';
import 'package:second_opnion/core/constants/color_constants.dart';

class CustomCategoryComponent extends StatelessWidget {
  final String name;
  final Color color;
  const CustomCategoryComponent(
      {super.key, required this.name, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
          color: ColorConstant.scaffoldColor,
          borderRadius: BorderRadius.circular(60),
          border: Border.all(color: color)),
      child: Center(
        child: Text(
          name,
          style: TextStyle(color: color, fontWeight: FontWeight.w400),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
