import 'package:bookl_app/Features/home/presention/view/widgets/feature_book_list_view.dart';
import 'package:bookl_app/core/utils/assets.dart';
import 'package:bookl_app/core/utils/styels.dart';
import 'package:flutter/material.dart';

import 'custom_appbar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppbar(),
            FeaturedBookListView(),
            SizedBox(
              height: 50,
            ),
            Text(
              'Best Seller',
              style: Styels.textStyle18,
            ),
            BestSellerListViewItem(),
          ],
        ),
      ),
    );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: const DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                AssetsData.imageTest,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
