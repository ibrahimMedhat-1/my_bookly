import 'package:bookly_app/features/home_page_feature/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/cupertino.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      margin: const EdgeInsets.only(left: 20),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const CustomBookItem(),
        separatorBuilder: (context, index) => const SizedBox(
          width: 8,
        ),
        itemCount: 10,
      ),
    );
  }
}
