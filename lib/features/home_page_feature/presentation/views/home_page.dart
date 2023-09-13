import 'package:bookly_app/features/home_page_feature/presentation/views/widgets/bestSeller_listView_item.dart';
import 'package:bookly_app/features/home_page_feature/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home_page_feature/presentation/views/widgets/featured_listview.dart';
import 'package:flutter/material.dart';

import '../../../../styles/textStyle.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(),
            FeaturedListView(),
            SizedBox(height: 50),
            Text(
              "Best Seller",
              style: TextStyles.tittleMedium,
            ),
            BestSellerListViewItem(),
          ],
        ),
      ),
    );
  }
}
