import 'package:flutter/material.dart';
import 'package:flutter_travel_nature/shared/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WeatherWidget extends StatelessWidget {
  const WeatherWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [color1, Colors.white],
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Today",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "Wed, 26 jan",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "31°C",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Image.asset(
                "assets/icons/sun.png",
                height: 65,
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: const [
              FaIcon(
                FontAwesomeIcons.locationDot,
                size: 18,
                color: Colors.amber,
              ),
              SizedBox(width: 8),
              Text(
                "Gowa, South Sulawesi",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
