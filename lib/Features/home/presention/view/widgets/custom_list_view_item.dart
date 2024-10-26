import 'package:bookl_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class FeaturedCustomListViewItem extends StatelessWidget {
  const FeaturedCustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(
              AssetsData.imageTest,
            ),
          ),
        ),
      ),
    );
  }
}
