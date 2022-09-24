import 'package:flutter/material.dart';
import 'package:task_assets/box_image.dart';
import 'package:task_assets/second_page.dart';

class GridViewDisplay extends StatelessWidget {
  GridViewDisplay({super.key});

  final listImage = [
    Image.network(
      "https://images.unsplash.com/photo-1542393545-10f5cde2c810?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=465&q=80",
      fit: BoxFit.cover,
    ),
    Image.network(
      "https://images.unsplash.com/photo-1566647387313-9fda80664848?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=465&q=80",
      fit: BoxFit.cover,
    ),
    Image.network(
      "https://images.unsplash.com/photo-1578950435899-d1c1bf932ab2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80",
      fit: BoxFit.cover,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(16),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      itemCount: listImage.length,
      itemBuilder: (context, index) {
        var gambar = listImage.elementAt(index);

        return InkWell(
          child: BoxImage(listImage[index]),
          onTap: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => SecondScreen(gambar),
            ),
          ),
        );
      },
    );
  }
}
