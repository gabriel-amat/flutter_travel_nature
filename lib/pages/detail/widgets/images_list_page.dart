import 'dart:ffi';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ImagesListPage extends StatefulWidget {
  final List<String> images;

  const ImagesListPage({Key? key, required this.images}) : super(key: key);

  @override
  State<ImagesListPage> createState() => _ImagesListPageState();
}

class _ImagesListPageState extends State<ImagesListPage> {

  int currentIndex = 1;
  var controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.black),
        title: const Text(
          "Images",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.amber,
        elevation: 0,
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: Colors.amber,
        child: Center(
          child: Text("${currentIndex.toString()} / ${widget.images.length}"),
        ),
      ),
      body: Center(
        child: CarouselSlider(
          carouselController: controller,
          options: CarouselOptions(
            onPageChanged: ((index, reason){
              setState(() => currentIndex = index + 1);
            }),
            height: 400,
            viewportFraction: 0.7,
            enlargeCenterPage: true,
          ),
          items: widget.images.map((element) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                element,
                fit: BoxFit.cover,
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
