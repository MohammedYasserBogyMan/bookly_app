import 'package:bookl_app/Features/search/presentation/view/widgets/custom_text_filed_search.dart';
import 'package:bookl_app/Features/search/presentation/view/widgets/search_result_list_view.dart';
import 'package:bookl_app/Features/splash/presentation/view_model/search_book_cubit.dart/search_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13),
      child: Column(
        children: [
          CustomSearchTextField(
            controller: controller,
            onSubmitted: (data) {
              BlocProvider.of<SearchBookCubit>(context)
                  .fetchSearchBooks(bookName: data);
              controller.clear();
            },
          ),
          const Expanded(
            child: CustomScrollView(
              slivers: [
                SearchResultListView(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}