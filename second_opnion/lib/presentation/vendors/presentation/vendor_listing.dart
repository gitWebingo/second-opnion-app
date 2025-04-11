import 'package:flutter/material.dart';
import 'package:second_opnion/core/constants/color_constants.dart';

class AstrologerHomePage extends StatelessWidget {
  const AstrologerHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(Icons.menu, color: Colors.black),
        title: const Text("Chats",
            style: TextStyle(color: Colors.black, fontSize: 16)),
        centerTitle: true,
        actions: [
          Row(
            children: [
              Stack(
                alignment: Alignment.topRight,
                children: [
                  const Icon(Icons.chat_bubble_outline, color: Colors.black),
                  Positioned(
                    right: 0,
                    child: Container(
                      height: 8,
                      width: 8,
                      decoration: const BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 12),
            ],
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        children: [
          const SizedBox(height: 10),
          SizedBox(height: 40, child: _buildCategoryTabs()),
          const SizedBox(height: 20),
          const Text("Connect Again",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16)),
          const SizedBox(height: 10),
          _buildConnectAgainList(),
          const SizedBox(height: 20),
          _buildAstrologerCard(
            name: "Sarvith",
            price: 1000,
            experience: "3 Years",
            skills: "Criminal, Tax",
            orders: "5196 cases",
            imagePath: "assets/images/l1.jpg",
            verified: true,
          ),
          _buildAstrologerCard(
            name: "Ikshali",
            price: 2400,
            experience: "3 Years",
            skills: "Divorce",
            orders: "13371 cases",
            imagePath: "assets/images/l2.jpg",
            verified: true,
          ),
          _buildAstrologerCard(
            name: "Akash",
            price: 500,
            experience: "1 Years",
            skills: "Divorce, Tax",
            orders: "137 cases",
            imagePath: "assets/images/l4.jpg",
            verified: false,
          ),
          _buildAstrologerCard(
            name: "Bhavnidh",
            price: 500,
            experience: "1 Years",
            skills: "Divorce, Tax",
            orders: "1337 cases",
            imagePath: "assets/images/l3.jpg",
            verified: true,
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryTabs() {
    final categories = [
      {"label": "Offer", "icon": Icons.local_offer_outlined},
      {"label": "Criminal", "icon": Icons.work_outline},
      {"label": "Divorce", "icon": Icons.favorite_outline},
      {"label": "Tax", "icon": Icons.document_scanner_outlined},
    ];

    return ListView(
      scrollDirection: Axis.horizontal,
      children: categories.map((cat) {
        final isSelected = cat['label'] == "Career";
        return Container(
          margin: EdgeInsets.only(right: 10),
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
                color: isSelected ? Colors.blue : Colors.grey.shade300),
            color: isSelected ? Colors.blue.shade50 : Colors.white,
          ),
          child: Row(
            children: [
              Icon(cat['icon'] as IconData,
                  size: 18, color: isSelected ? Colors.blue : Colors.black),
              const SizedBox(width: 4),
              Text(
                cat['label'] as String,
                style:
                    TextStyle(color: isSelected ? Colors.blue : Colors.black),
              )
            ],
          ),
        );
      }).toList(),
    );
  }

  Widget _buildConnectAgainList() {
    final users = [
      {"name": "Sarvith", "rate": "₹1000/hr", "image": "assets/images/l1.jpg"},
      {
        "name": "Bhavnidh",
        "rate": "₹5000/hr",
        "image": "assets/images/l3.jpg",
        "tag": "Popular"
      },
      {"name": "Ikshali", "rate": "₹1500/hr", "image": "assets/images/l2.jpg"},
    ];

    return SizedBox(
      height: 90,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: users.length,
        itemBuilder: (_, index) {
          final user = users[index];
          return Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 26,
                  backgroundColor: Colors.yellow,
                  child: CircleAvatar(
                    radius: 24,
                    backgroundImage: AssetImage(user['image']!),
                  ),
                ),
                const SizedBox(height: 4),
                Text(user['name']!, style: const TextStyle(fontSize: 12)),
                Text(user['rate']!,
                    style: const TextStyle(fontSize: 10, color: Colors.grey)),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildAstrologerCard({
    required String name,
    required int price,
    required String skills,
    required String experience,
    required String orders,
    required String imagePath,
    String? badgeText,
    Color? badgeColor,
    bool verified = false,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)],
      ),
      child: Row(
        children: [
          Stack(
            alignment: Alignment.topLeft,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(imagePath),
              ),
              if (badgeText != null)
                Positioned(
                  left: -8,
                  top: -8,
                  child: Transform.rotate(
                    angle: -0.5,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 4, vertical: 2),
                      color: badgeColor ?? Colors.black,
                      child: Text(
                        badgeText,
                        style:
                            const TextStyle(fontSize: 8, color: Colors.white),
                      ),
                    ),
                  ),
                ),
            ],
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(name,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16)),
                    const SizedBox(width: 6),
                    if (verified)
                      const Icon(Icons.verified, color: Colors.green, size: 18),
                  ],
                ),
                const SizedBox(height: 4),
                Text(skills, style: const TextStyle(fontSize: 12)),
                Text("Exp: $experience", style: const TextStyle(fontSize: 12)),
                const SizedBox(height: 4),
                Row(
                  children: [
                    const Icon(Icons.star, size: 14, color: Colors.amber),
                    const Icon(Icons.star, size: 14, color: Colors.amber),
                    const Icon(Icons.star, size: 14, color: Colors.amber),
                    const Icon(Icons.star, size: 14, color: Colors.amber),
                    const Icon(Icons.star_half, size: 14, color: Colors.amber),
                    const SizedBox(width: 4),
                    Text(orders,
                        style:
                            const TextStyle(fontSize: 11, color: Colors.grey)),
                  ],
                ),
                const SizedBox(height: 4),
                Text("₹ $price/hr",
                    style: const TextStyle(
                        fontSize: 13, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                height: 34,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ColorConstant.scaffoldColor,
                    foregroundColor: ColorConstant.primaryColor,
                    shadowColor:
                        ColorConstant.primaryColor.withValues(alpha: 0.2),
                    elevation: 0.5,
                    side: BorderSide(
                        color: ColorConstant.primaryColor, width: 0.2),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 18, vertical: 2),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Chat Now",
                    style: TextStyle(
                        color: ColorConstant.primaryColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
