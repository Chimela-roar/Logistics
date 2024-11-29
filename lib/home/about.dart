import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class About extends StatelessWidget {
  const About({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveBreakpoints.of(context).isMobile
        ? const AboutMobile()
        : ResponsiveBreakpoints.of(context).isTablet
            ? const AboutTab()
            : const AboutDesktop();
  }
}

class AboutTab extends StatelessWidget {
  const AboutTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 50)
      color: Colors.black,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SelectableText(
                        cursorColor: Colors.blue,
                        "The best delivery drivers you have ever seen.",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            height: 0,
                            color: Colors.white,
                            fontSize: 30,
                            fontFamily: "SF PRO",
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(height: 5),
                      SelectableText(
                        "First, they carried You.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: "SF PRO",
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(height: 3),
                      SelectableText(
                        "Now, they carry your packages for You.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: "SF PRO",
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    "assets/image/learn_image_1.jpeg",
                  ),
                ),
              ],
            ),
          ),
          Stack(
            children: [
              Positioned(
                  //top: 0,
                  bottom: 55,
                  left: 60,
                  child: Image.asset(
                    "assets/image/grid_design.png",
                    height: 120,
                    width: 120,
                  )),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 130, vertical: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset(
                        height: 500,
                        width: 550,
                        "assets/image/learn_image_2.jpg",
                      ),
                    ),
                    const SizedBox(width: 70),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SelectableText(
                            cursorColor: Colors.blue,
                            "The best delivery drivers you have ever seen.",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                height: 0,
                                color: Colors.white,
                                fontSize: 40,
                                fontFamily: "SF PRO",
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(height: 5),
                          SelectableText(
                            "First, they carried You.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontFamily: "SF PRO",
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(height: 3),
                          SelectableText(
                            "Now, they carry your packages for You.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontFamily: "SF PRO",
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 130, vertical: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SelectableText(
                        cursorColor: Colors.blue,
                        "The best delivery drivers you have ever seen.",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            height: 0,
                            color: Colors.white,
                            fontSize: 40,
                            fontFamily: "SF PRO",
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(height: 5),
                      SelectableText(
                        "First, they carried You.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: "SF PRO",
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(height: 3),
                      SelectableText(
                        "Now, they carry your packages for You.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: "SF PRO",
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 20),
                Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset(
                    height: 500,
                    width: 550,
                    "assets/image/learn_image_3.jpg",
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class AboutDesktop extends StatelessWidget {
  const AboutDesktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 50)
      color: Colors.black,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SelectableText(
                        cursorColor: Colors.blue,
                        "The best delivery drivers you have ever seen.",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            height: 0,
                            color: Colors.white,
                            fontSize: 40,
                            fontFamily: "SF PRO",
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(height: 5),
                      SelectableText(
                        "First, they carried You.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: "SF PRO",
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(height: 3),
                      SelectableText(
                        "Now, they carry your packages for You.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: "SF PRO",
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset(
                    height: 500,
                    width: 550,
                    "assets/image/learn_image_1.jpeg",
                  ),
                ),
              ],
            ),
          ),
          Stack(
            children: [
              Positioned(
                  //top: 0,
                  bottom: 55,
                  left: 60,
                  child: Image.asset(
                    "assets/image/grid_design.png",
                    height: 120,
                    width: 120,
                  )),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 130, vertical: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset(
                        height: 500,
                        width: 550,
                        "assets/image/learn_image_2.jpg",
                      ),
                    ),
                    const SizedBox(width: 70),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SelectableText(
                            cursorColor: Colors.blue,
                            "The best delivery drivers you have ever seen.",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                height: 0,
                                color: Colors.white,
                                fontSize: 40,
                                fontFamily: "SF PRO",
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(height: 5),
                          SelectableText(
                            "First, they carried You.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontFamily: "SF PRO",
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(height: 3),
                          SelectableText(
                            "Now, they carry your packages for You.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontFamily: "SF PRO",
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 130, vertical: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SelectableText(
                        cursorColor: Colors.blue,
                        "The best delivery drivers you have ever seen.",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            height: 0,
                            color: Colors.white,
                            fontSize: 40,
                            fontFamily: "SF PRO",
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(height: 5),
                      SelectableText(
                        "First, they carried You.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: "SF PRO",
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(height: 3),
                      SelectableText(
                        "Now, they carry your packages for You.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: "SF PRO",
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 20),
                Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset(
                    height: 500,
                    width: 550,
                    "assets/image/learn_image_3.jpg",
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class AboutMobile extends StatelessWidget {
  const AboutMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 50)
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(50, 50, 50, 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SelectableText(
                      cursorColor: Colors.blue,
                      "The best delivery drivers you have ever seen.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          height: 0,
                          color: Colors.white,
                          fontSize: 30,
                          fontFamily: "SF PRO",
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 5),
                    SelectableText(
                      "First, they carried You.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: "SF PRO",
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(height: 3),
                    SelectableText(
                      "Now, they carry your packages for You.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: "SF PRO",
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset(
                    // height: 500,
                    // width: 550,
                    "assets/image/learn_image_1.jpeg",
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SelectableText(
                      cursorColor: Colors.blue,
                      "The best delivery drivers you have ever seen.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          height: 0,
                          color: Colors.white,
                          fontSize: 30,
                          fontFamily: "SF PRO",
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 5),
                    SelectableText(
                      "First, they carried You.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: "SF PRO",
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(height: 3),
                    SelectableText(
                      "Now, they carry your packages for You.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: "SF PRO",
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Stack(
                  children: [
                    Positioned(
                        //top: 0,
                        bottom: 0,
                        left: 40,
                        child: Image.asset(
                          "assets/image/grid_design.png",
                          // height: 100,
                          // width: 100,
                        )),
                    Container(
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset(
                        "assets/image/learn_image_2.jpg",
                      ),
                    ),
                  ],
                ),
                //const SizedBox(width: 70),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SelectableText(
                      cursorColor: Colors.blue,
                      "The best delivery drivers you have ever seen.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          height: 0,
                          color: Colors.white,
                          fontSize: 30,
                          fontFamily: "SF PRO",
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 5),
                    SelectableText(
                      "First, they carried You.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: "SF PRO",
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(height: 3),
                    SelectableText(
                      "Now, they carry your packages for You.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: "SF PRO",
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset(
                    // height: 500,
                    // width: 550,
                    "assets/image/learn_image_3.jpg",
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
