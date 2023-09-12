import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../home_page_feature/presentation/views/home_page.dart';

class TextAnimation extends StatefulWidget {
  const TextAnimation({super.key});

  @override
  State<TextAnimation> createState() => _TextAnimationState();
}

class _TextAnimationState extends State<TextAnimation> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> animation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    homePageNavigate();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController,
      builder: (context, child) => child!,
      child: SlideTransition(
        position: animation,
        child: const Center(
          child: Text('Bookley App'),
        ),
      ),
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: kAnimationDuration,
    );
    animation = Tween<Offset>(begin: const Offset(0, 4), end: Offset.zero).animate(animationController);
    animationController.forward();
  }

  void homePageNavigate() {
    Future.delayed(kNavigationDuration, () {
      Get.to(const HomePage(), transition: Transition.fadeIn);
    });
  }
}
