import 'package:flutter/material.dart';
import 'package:flutter_travel_nature/pages/detail/widgets/images_list_page.dart';

class ImagesList extends StatelessWidget {
  final List<String> images;

  const ImagesList({
    Key? key,
    required this.images,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        clipBehavior: Clip.none,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (_, i) {
          if (i == 3) {
            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ImagesListPage(images: images),
                  ),
                );
              },
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(images[3]),
                      ),
                    ),
                  ),
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.withOpacity(0.5),
                    ),
                  ),
                  Text(
                    "+ ${images.length - 4}",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            );
          }
          return Container(
            width: 80,
            height: 80,
            margin: const EdgeInsets.only(right: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(images[i]),
              ),
            ),
          );
        },
      ),
    );
  }
}
