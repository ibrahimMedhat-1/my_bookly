import 'package:bookly_app/core/utils/assets_class.dart';
import 'package:bookly_app/features/splash_feature/widgets/sliding_text.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(AssetsData.logo),
          const TextAnimation(),
        ],
      ),
    );
  }
}
