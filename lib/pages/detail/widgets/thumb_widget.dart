import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_travel_nature/models/location_model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ThumbWidget extends StatelessWidget {
  final LocationModel location;
  final String heroTag;

  const ThumbWidget({
    Key? key,
    required this.location,
    required this.heroTag,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Hero(
          tag: heroTag,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              location.thumb,
              fit: BoxFit.cover,
              height: 320,
              width: double.maxFinite,
            ),
          ),
        ),
        Container(
          height: 320,
          width: double.maxFinite,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black54,
                  ])),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              CircleAvatar(
                radius: 15,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.amber,
                ),
              ),
              CircleAvatar(
                radius: 15,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.bookmark_border_rounded,
                  color: Colors.amber,
                ),
              )
            ],
          ),
        ),
        Positioned(
          bottom: 16,
          left: 16,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                location.label,
                style: const TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  const FaIcon(
                    FontAwesomeIcons.locationDot,
                    color: Colors.amber,
                    size: 18,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    location.label,
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      "\$${location.value}/person",
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
