import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_travel_nature/models/location_model.dart';
import 'package:flutter_travel_nature/pages/detail/detail_page.dart';
import 'package:flutter_travel_nature/shared/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ListWidget extends StatefulWidget {
  const ListWidget({Key? key}) : super(key: key);

  @override
  State<ListWidget> createState() => _ListWidgetState();
}

class _ListWidgetState extends State<ListWidget> {
  final modelTest = [
    LocationModel(
      thumb: stairsImageUrl,
      label: "Malino Highlands",
      location: "South Sulawesi",
      value: "450",
      images: imgList1,
    ),
    LocationModel(
      thumb: karsMarosImageUrl,
      label: "Kars Maros",
      location: "South Sulawesi",
      value: "300",
      images: imgList1,
    )
  ];

  Widget cardWidget(LocationModel data) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade400.withOpacity(0.5),
            blurRadius: 2,
            spreadRadius: 2,
            offset: const Offset(5, 5),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    data.thumb,
                    height: 180,
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 5,
                  left: 5,
                  child: ClipRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.shade200.withOpacity(0.5),
                        ),
                        child: Text(
                          "\$${data.value}",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 12),
          Text(
            data.label,
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              const FaIcon(
                FontAwesomeIcons.locationDot,
                color: Colors.amber,
                size: 18,
              ),
              const SizedBox(width: 8),
              Text(
                data.location,
                style: const TextStyle(
                  color: Colors.grey,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Nearestby",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "View all",
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
          const SizedBox(height: 8),
          GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 9 / 14,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
            ),
            padding: EdgeInsets.zero,
            clipBehavior: Clip.none,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: modelTest.length,
            itemBuilder: (context, index) {
              var tag = "image = ${index.toString()}";
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailPage(
                        location: modelTest[index],
                        heroTag: tag,
                      ),
                    ),
                  );
                },
                child: Hero(
                  tag: tag,
                  child: Material(
                    type: MaterialType.transparency,
                    child: cardWidget(modelTest[index]),
                  ),
                ),
              );
            },
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
