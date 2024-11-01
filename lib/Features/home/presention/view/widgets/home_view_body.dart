import 'package:bookl_app/Features/home/presention/view/widgets/feature_book_list_view.dart';
import 'package:bookl_app/core/utils/styels.dart';
import 'package:flutter/material.dart';

import 'best_seller_list_view.dart';
import 'custom_appbar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
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
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
          SliverFillRemaining(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: BestSellerListView(),
            ),
          )
        ],
      ),
    );
  }
}
