import 'package:flutter/material.dart';
import 'custom_color.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Card(
              child: Container(
                width: 250,
                height: 100,
                child: Row(
                  children: [
                    const Image(
                      image: AssetImage("assets/images/shoes01.png"),
                    ),
                    SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Text(
                          "Nike Free Metcon 3",
                          style: TextStyle(
                              color: blackColor, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "\$160",
                          style: TextStyle(
                              color: blackColor, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Card(
              child: Container(
                width: 250,
                height: 100,
                child: Row(
                  children: [
                    const Image(
                      image: AssetImage("assets/images/shoes02.png"),
                    ),
                    SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Text(
                          "Nike Free Metcon 3",
                          style: TextStyle(
                              color: blackColor, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "\$160",
                          style: TextStyle(
                              color: blackColor, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Card(
              child: Container(
                width: 250,
                height: 100,
                child: Row(
                  children: [
                    const Image(
                      image: AssetImage("assets/images/shoes03.png"),
                    ),
                    SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Text(
                          "Nike Air Max 270",
                          style: TextStyle(
                              color: blackColor, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "\$130",
                          style: TextStyle(
                              color: blackColor, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Card(
              child: Container(
                width: 250,
                height: 100,
                child: Row(
                  children: [
                    const Image(
                      image: AssetImage("assets/images/shoes03.png"),
                    ),
                    const SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Text(
                          "Nike Air Max 270",
                          style: TextStyle(
                              color: blackColor, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "\$130",
                          style: TextStyle(
                              color: blackColor, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Card(
              child: Container(
                width: 250,
                height: 100,
                child: Row(
                  children: [
                    const Image(
                      image: AssetImage("assets/images/shoes03.png"),
                    ),
                    const SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Text(
                          "Nike React Miller",
                          style: TextStyle(
                              color: blackColor, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "\$120",
                          style: TextStyle(
                              color: blackColor, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
