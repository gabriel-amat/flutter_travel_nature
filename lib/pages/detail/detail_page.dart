import 'package:flutter/material.dart';
import 'package:flutter_travel_nature/models/location_model.dart';
import 'package:flutter_travel_nature/pages/detail/widgets/images_list.dart';
import 'package:flutter_travel_nature/pages/detail/widgets/thumb_widget.dart';

class DetailPage extends StatelessWidget {
  final LocationModel location;
  final String heroTag;

  const DetailPage({
    Key? key,
    required this.heroTag,
    required this.location,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                ThumbWidget(location: location, heroTag: heroTag),
                const SizedBox(height: 16),
                ImagesList(images: location.images),
                const SizedBox(height: 22),
                Row(
                  children: [
                    const Text(
                      "Overview",
                      style: TextStyle(
                        color: Colors.amber,
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      "Reviews",
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.schedule_rounded, color: Colors.amber),
                        const SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Duration",
                              style: TextStyle(
                                color: Colors.grey[400],
                              ),
                            ),
                            const SizedBox(height: 8),
                            const Text(
                              "8 Hours",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 30,
                        ),
                        const SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Rating",
                              style: TextStyle(
                                color: Colors.grey[400],
                              ),
                            ),
                            const SizedBox(height: 8),
                            const Text(
                              "4.7 / 5",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.grey[400],
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  width: double.maxFinite,
                  height: 55,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(20)),
                  child: const Center(
                    child: Text(
                      "Booking Now",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
