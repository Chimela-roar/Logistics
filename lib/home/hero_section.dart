import 'package:flutter/material.dart';
import 'package:logistics/application/theme.dart';
import 'package:logistics/home/about.dart';
import 'package:logistics/home/features.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBreakpoints.of(context).between(MOBILE, TABLET)
        ? HeroMobile(width: width, height: height)
        : HeroDesktop(width: width, height: height);
  }
}

class HeroDesktop extends StatelessWidget {
  const HeroDesktop({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              Container(
                height: height,
                color: backgrondColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: width / 5),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: SelectableText(
                              cursorColor: Colors.blue,
                              "The largest last mile delivery service in Nigeria.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  height: 0,
                                  color: Colors.white,
                                  fontSize: 60,
                                  fontFamily: "SF PRO",
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 5),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: width / 4),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: SelectableText(
                              "Quality Drivers. Great Prices. Tracking. Stress-Free Deliveries.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontFamily: "SF PRO",
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: height / 30),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            backgroundColor: const Color(0XFF00BD8D)),
                        onPressed: () {},
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 13, horizontal: 10),
                          child: SelectableText(
                            "Let's help you deliver",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: "SF PRO",
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                    const SizedBox(height: 8),
                    const SelectableText(
                      "Currently Serving Lagos, Nigeria.",
                      style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFF5C5F66),
                          fontFamily: "SF PRO"),
                    )
                  ],
                ),
              ),
              const About(),
              const Features()
            ],
          ),
        )
      ],
    );
  }
}

class HeroMobile extends StatelessWidget {
  const HeroMobile({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              Container(
                height: height,
                color: backgrondColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: width / 7),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: SelectableText(
                              cursorColor: Colors.blue,
                              "The largest last mile delivery service in Nigeria.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  height: 0,
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontFamily: "SF PRO",
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 5),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: width / 4),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: SelectableText(
                              "Quality Drivers. Great Prices. Tracking. Stress-Free Deliveries.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontFamily: "SF PRO",
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: height / 30),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            backgroundColor: const Color(0XFF00BD8D)),
                        onPressed: () {},
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 13, horizontal: 10),
                          child: SelectableText(
                            "Let's help you deliver",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: "SF PRO",
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                    const SizedBox(height: 8),
                    const SelectableText(
                      "Currently Serving Lagos, Nigeria.",
                      style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFF5C5F66),
                          fontFamily: "SF PRO"),
                    )
                  ],
                ),
              ),
              const About(),
              const Features()
            ],
          ),
        )
      ],
    );
  }
}
