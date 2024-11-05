import 'package:bookl_app/Features/search/presentation/view/widgets/search_result_list_view.dart';
import 'package:bookl_app/core/utils/styels.dart';
import 'package:flutter/material.dart';

import 'custom_text_filed_search.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomSearchTextFiled(),
        SizedBox(
          height: 16,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: Text(
            'Search Resulet',
            style: Styels.textStyle18,
          ),
        ),
        Expanded(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: SearchResultListView(),
        )),
      ],
    );
  }
}
