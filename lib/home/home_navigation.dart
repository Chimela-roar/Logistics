import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logistics/application/theme.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HomeNavigation extends StatelessWidget {
  const HomeNavigation({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBreakpoints.of(context).between(MOBILE, TABLET)
        ? NavigationMobile(width: width)
        : NavigationDesktop(width: width);
  }
}

class NavigationDesktop extends StatelessWidget {
  const NavigationDesktop({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            padding: const EdgeInsets.fromLTRB(150, 20, 150, 20),
            width: width,
            decoration: BoxDecoration(
                color: navigationBackgrondColor.withOpacity(0.9),
                border:
                    const Border(bottom: BorderSide(color: Color(0xFF242527)))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 3,
                  child: Row(
                    children: [
                      Text(
                        "Logistics",
                        style: GoogleFonts.notoSansAdlam(
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                            fontSize: 20),
                      ),
                    ],
                  ),
                ),
                const Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "About",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "SF PRO",
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "Features",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "SF PRO",
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "Logistics",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "SF PRO",
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class NavigationMobile extends StatelessWidget {
  const NavigationMobile({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return ResponsiveRowColumn(
      layout: ResponsiveRowColumnType.ROW,
      children: [
        ResponsiveRowColumnItem(
          child: Align(
            alignment: Alignment.topCenter,
            child: ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Container(
                  padding: const EdgeInsets.fromLTRB(50, 20, 50, 20),
                  width: width,
                  decoration: BoxDecoration(
                      color: navigationBackgrondColor.withOpacity(0.9),
                      border: const Border(
                          bottom: BorderSide(color: Color(0xFF242527)))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 3,
                        child: Row(
                          children: [
                            Text(
                              "Logistics",
                              style: GoogleFonts.notoSansAdlam(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                      const Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
