import 'package:flutter/material.dart';

import 'package:logistics/home/hero_section.dart';
import 'package:logistics/home/home_navigation.dart';

class Home extends StatelessWidget {
  const Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          HeroSection(height: height, width: width),
          HomeNavigation(width: width),
        ],
      ),
    );
  }
}
