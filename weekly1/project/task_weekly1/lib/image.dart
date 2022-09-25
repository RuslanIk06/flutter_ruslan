import 'package:flutter/material.dart';
import 'package:task_weekly1/custom_color.dart';

class ImagePage extends StatelessWidget {
  const ImagePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset("assets/images/image4.png"),
        Center(
          child: Column(
            children: [
              const SizedBox(height: 50),
              const Text(
                "Welcome To MyShoes",
                style: TextStyle(
                  fontSize: 24,
                  color: blackColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "Premium uality hoes in Indonesia",
                style: TextStyle(color: blackColor),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    "Explore More",
                    style: TextStyle(color: whiteColor),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
