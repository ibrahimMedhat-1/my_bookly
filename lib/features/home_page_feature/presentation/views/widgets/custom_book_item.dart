import 'package:bookly_app/core/utils/assets_class.dart';
import 'package:flutter/material.dart';

class CustomBookItem extends StatelessWidget {
  const CustomBookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.5 / 4,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(16),
          image: const DecorationImage(
            image: AssetImage(ImageAssets.testImage),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
