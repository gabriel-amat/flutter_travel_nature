import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_travel_nature/shared/constants.dart';

class BackgroundCarousel extends StatelessWidget {
  final CarouselController controller;
  final Function(int) onPageChange;

  const BackgroundCarousel({
    Key? key,
    required this.onPageChange,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      carouselController: controller,
      options: CarouselOptions(
        onPageChanged: (index, reason) => onPageChange(index),
        enlargeCenterPage: true,
        enlargeStrategy: CenterPageEnlargeStrategy.height,
        height: double.maxFinite,
        viewportFraction: 1,
      ),
      items: introductionBackground.map(
        (element) {
          return Builder(
            builder: (context) {
              return Image.network(
                element,
                fit: BoxFit.cover,
              );
            },
          );
        },
      ).toList(),
    );
  }
}
