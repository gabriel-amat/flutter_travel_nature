import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_travel_nature/pages/home/home_page.dart';
import 'package:flutter_travel_nature/pages/introduction/widgets/background_carousel.dart';
import 'package:flutter_travel_nature/shared/constants.dart';

class IntroductionPage extends StatefulWidget {
  const IntroductionPage({Key? key}) : super(key: key);

  @override
  State<IntroductionPage> createState() => _IntroductionPageState();
}

class _IntroductionPageState extends State<IntroductionPage> {
  final carouselController = CarouselController();
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          BackgroundCarousel(
            controller: carouselController,
            onPageChange: (int index) {
              setState(() => currentPage = index);
            },
          ),
          //Gradiant
          IgnorePointer(
            child: Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.white12,
                    Colors.black54,
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Let's explore",
                  style: TextStyle(
                    letterSpacing: 2,
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
                const Text(
                  "nature in the\nworld",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 40,
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: introductionBackground.asMap().entries.map((entry) {
                    return Container(
                      width: currentPage == entry.key ? 30 : 12,
                      height: 10,
                      margin: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 4,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.yellow.withOpacity(
                          currentPage == entry.key ? 0.9 : 0.4,
                        ),
                      ),
                    );
                  }).toList(),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                    );
                  },
                  child: Container(
                    width: double.maxFinite,
                    height: 50,
                    margin: const EdgeInsets.only(top: 50),
                    decoration: BoxDecoration(
                        color: Colors.yellow[600],
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.yellow,
                            spreadRadius: 1,
                            blurRadius: 5,
                          ),
                        ]),
                    child: const Center(
                      child: Text(
                        "Get Started",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
