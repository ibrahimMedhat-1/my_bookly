import 'package:bookly_app/features/home_page_feature/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home_page_feature/presentation/views/widgets/featured_listview.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          CustomAppBar(),
          FeaturedListView(),
        ],
      ),
    );
  }
}
