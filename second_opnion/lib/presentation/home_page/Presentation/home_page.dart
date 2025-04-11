import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:second_opnion/core/constants/color_constants.dart';
import 'package:second_opnion/core/constants/ui_constants.dart';
import 'package:second_opnion/presentation/home_page/widgets/custom_category_component.dart';
import 'package:second_opnion/presentation/home_page/widgets/custom_lawyer_component.dart';
import 'package:second_opnion/presentation/home_page/widgets/free_consultant_component.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Widget _buildFeatureItem(String title, IconData icon) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: ColorConstant.primaryColor,
          child: Icon(icon, color: Colors.white, size: 28),
        ),
        const SizedBox(height: 8),
        Text(title,
            textAlign: TextAlign.center, style: const TextStyle(fontSize: 14)),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.scaffoldColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 14),
          child: AppBar(
            backgroundColor: ColorConstant.scaffoldColor,
            elevation: 0,
            centerTitle: true,
            leading: Padding(
              padding: const EdgeInsets.only(left: 4),
              child: CircleAvatar(
                backgroundColor: ColorConstant.yellowColor,
                radius: 20,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(60),
                  child: Image.asset(
                    "assets/images/user.jpg",
                    fit: BoxFit.cover,
                    height: 40,
                    width: 40,
                  ),
                ),
              ),
            ),
            title: Container(
              height: 40,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: ColorConstant.scaffoldColor,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: ColorConstant.yellowColor),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    color: ColorConstant.yellowColor,
                    size: 18,
                  ),
                  const SizedBox(width: 6),
                  Text(
                    "West Bengal ...",
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 6),
                  Icon(
                    Icons.arrow_drop_down,
                    color: ColorConstant.textColor,
                    size: 20,
                  ),
                ],
              ),
            ),
            actions: [
              Badge(
                child: Icon(
                  Icons.notifications_none_sharp,
                  color: ColorConstant.textColor,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Badge(
                child: Icon(
                  Icons.chat_outlined,
                  color: ColorConstant.textColor,
                ),
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: UiConstants.scaffoldHorizontalPadding,
        ),
        children: [
          const SizedBox(
            height: 10,
          ),
          Text(
            "Good Morning, Dheeraj",
            style: TextStyle(
                color: ColorConstant.textColor,
                fontSize: 22,
                fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 5,
          ),
          CupertinoSearchTextField(
            prefixInsets: const EdgeInsetsDirectional.fromSTEB(10, 3, 0, 3),
            itemColor: ColorConstant.textColor,
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
                color: ColorConstant.scaffoldColor,
                border: Border.all(
                    color: ColorConstant.textColor.withValues(alpha: 0.3)),
                borderRadius: BorderRadius.circular(30)),
            placeholder: "Enter case type, location, lawyer's name",
            placeholderStyle:
                TextStyle(fontSize: 14, color: ColorConstant.greyTextColor),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 90,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _buildFeatureItem("Criminal", Icons.add_moderator_outlined),
                const SizedBox(
                  width: 20,
                ),
                _buildFeatureItem("Civil", Icons.grid_view),
                const SizedBox(
                  width: 20,
                ),
                _buildFeatureItem("Family", Icons.favorite_border),
                const SizedBox(
                  width: 20,
                ),
                _buildFeatureItem("Divorce", Icons.menu_book_outlined),
                const SizedBox(
                  width: 20,
                ),
                _buildFeatureItem("Mortage", Icons.account_balance),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                ColorConstant.yellowColor.withValues(alpha: 0.1),
                ColorConstant.yellowColor.withValues(alpha: 0.4),
                ColorConstant.yellowColor.withValues(alpha: 0.6),
              ]),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(60),
                  child: Image.asset(
                    'assets/images/l3.jpg',
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 16),
                // Offer Text
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("You've unlocked a SURPRISE!",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: ColorConstant.secondaryColor)),
                      SizedBox(height: 6),
                      Text("₹500/hr only",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w600)),
                      SizedBox(height: 6),
                      MaterialButton(
                        onPressed: () {},
                        minWidth: 90,
                        elevation: 0,
                        height: 30,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14)),
                        color: ColorConstant.primaryColor,
                        child: Text("Chat Now",
                            style:
                                TextStyle(color: ColorConstant.scaffoldColor)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text("Chat Now",
              style: TextStyle(
                  color: ColorConstant.primaryColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 14)),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 240,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CustomLawyerComponent(
                  imageUrl: "assets/images/l2.jpg",
                  title: "Prerna",
                  desc: "Divorce, Tax",
                ),
                const SizedBox(
                  width: 15,
                ),
                CustomLawyerComponent(
                  imageUrl: "assets/images/l1.jpg",
                  title: "Virat",
                  desc: "Civil",
                ),
                const SizedBox(
                  width: 15,
                ),
                CustomLawyerComponent(
                  imageUrl: "assets/images/l4.jpg",
                  title: "Dheeraj",
                  desc: "Criminal",
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Free Consultation",
                  style: TextStyle(
                      color: ColorConstant.primaryColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 14)),
              Text("view all",
                  style: TextStyle(
                      color: ColorConstant.yellowColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12)),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 90,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                FreeConsultantComponent(
                  imageUrl: "assets/images/l2.jpg",
                  name: "Prerna",
                  location: "Gangtok",
                ),
                const SizedBox(
                  width: 10,
                ),
                FreeConsultantComponent(
                  imageUrl: "assets/images/l3.jpg",
                  name: "Virat",
                  location: "Kolkata",
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Documnets",
                  style: TextStyle(
                      color: ColorConstant.primaryColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 14)),
              Text("view all",
                  style: TextStyle(
                      color: ColorConstant.yellowColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12)),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 240,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CustomLawyerComponent(
                  imageUrl: "assets/images/p1.jpg",
                  title: "Talk to Lawyer",
                  desc: "Instant ",
                ),
                const SizedBox(
                  width: 10,
                ),
                CustomLawyerComponent(
                  imageUrl: "assets/images/p3.jpg",
                  title: "Manage you cases",
                  desc: "Track",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
