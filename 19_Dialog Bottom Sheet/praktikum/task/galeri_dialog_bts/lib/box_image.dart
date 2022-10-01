import 'package:flutter/material.dart';
import 'package:galeri_dialog_bts/custom_color.dart';

class BoxImage extends StatelessWidget {
  final String _listImage;
  const BoxImage(this._listImage, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          border: Border.all(color: greyColor),
          borderRadius: BorderRadius.circular(10),
          color: greyColor,
        ),
        child: Container(
          width: 100,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(_listImage),
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(16),
            ),
          ),
        ),
      ),
    );
  }
}
