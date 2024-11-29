import 'package:flutter/material.dart';
import 'package:logistics/application/theme.dart';

class Features extends StatelessWidget {
  const Features({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 70),
      color: Colors.black,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SelectableText(
            "We Deliver More than Parcels",
            style: TextStyle(
                height: 0,
                color: Colors.white,
                fontSize: 50,
                fontFamily: "SF PRO",
                fontWeight: FontWeight.w700),
          ),
          SizedBox(height: 30),
          Row(
            children: [
              FeatureItems(
                image: "hungry",
                title: "Hungry?",
                subtitle: "We’ve got you covered with GFood",
              ),
              SizedBox(width: 40),
              FeatureItems(
                image: "business",
                title: "Running a Business?",
                subtitle: "‍Let’s handle your deliveries with GBusiness",
              ),
              SizedBox(width: 40),
              FeatureItems(
                image: "partner",
                title: "GPartner",
                subtitle:
                    "We’ve got GPartners to make sure we’ve got more than enough Pilots to help you with your deliveries.",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class FeatureItems extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  const FeatureItems({
    required this.image,
    required this.title,
    required this.subtitle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              child: SizedBox(
                height: 150,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  "assets/image/$image.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  color: navigationBackgrondColor,
                  border: Border(top: BorderSide(color: Colors.grey))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SelectableText(
                    title,
                    style: const TextStyle(
                        height: 0,
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: "SF PRO",
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 15),
                  SelectableText(
                    subtitle,
                    style: const TextStyle(
                        height: 0,
                        color: Color(0xFF8A8F99),
                        fontSize: 15,
                        fontFamily: "SF PRO",
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
