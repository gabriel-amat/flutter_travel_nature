import 'package:flutter/material.dart';
import 'package:flutter_travel_nature/shared/constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(userPhoto),
                ),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Welcome back,",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Gabriel Amat",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 1,
                    spreadRadius: 1,
                    offset: Offset(1, 1),
                    color: Colors.grey,
                  )
                ]
              ),
              padding: const EdgeInsets.all(5),
              child: const Icon(
                Icons.notifications_none_rounded,
                color: Colors.amber,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
