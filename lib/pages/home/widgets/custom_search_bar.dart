import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({Key? key}) : super(key: key);

  Widget icon() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.only(right: 12),
      child: Image.asset(
        "assets/icons/edit.png",
        fit: BoxFit.cover,
        height: 5,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: TextField(
          decoration: InputDecoration(
            suffixIcon: icon(),
            prefixIcon: const Icon(Icons.search_rounded),
            labelText: 'Search',
            labelStyle: const TextStyle(
              color: Colors.grey,
              fontSize: 16,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ),
    );
  }
}
