import 'package:flutter/material.dart';
import 'package:second_opnion/core/constants/color_constants.dart';

class FreeConsultantComponent extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String location;
  const FreeConsultantComponent(
      {super.key,
      required this.imageUrl,
      required this.name,
      required this.location});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,
      margin: EdgeInsets.all(4),
      padding: EdgeInsets.all(6),
      decoration: BoxDecoration(
          color: ColorConstant.scaffoldColor,
          boxShadow: [
            BoxShadow(
                color: ColorConstant.greyTextColor.withValues(alpha: 0.4),
                blurRadius: 2)
          ],
          borderRadius: BorderRadius.circular(14)),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              imageUrl,
              height: 80,
              width: 80,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      name,
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                    const Spacer(),
                    Text(
                      "4.8",
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
                    ),
                    Icon(
                      Icons.star,
                      size: 16,
                      color: Colors.yellow.shade700,
                    )
                  ],
                ),
                Text(
                  "Criminal Lawyer",
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    color: ColorConstant.greyTextColor,
                  ),
                ),
                Text(
                  "Tax Lawyer",
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    color: ColorConstant.greyTextColor,
                  ),
                ),
                const Spacer(),
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      size: 14,
                      color: Colors.black,
                    ),
                    Text(
                      location,
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                    ),
                    const Spacer(),
                    Text(
                      "Free",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      width: 10,
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
