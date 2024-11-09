import 'package:bookl_app/Features/home/presentation/view/widgets/best_seller_list_view_item.dart';
import 'package:bookl_app/Features/splash/presentation/view_model/search_book_cubit.dart/search_book_cubit.dart';
import 'package:bookl_app/core/widgets/custom_error.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBookCubit, SearchBookState>(
      builder: (context, state) {
        if (state is SearchBookSucsse) {
          return SliverList.builder(
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding:  const EdgeInsets.symmetric(vertical: 10),
                child: BooksListViewItem(books:  state.books[index],
                ),
              );
            },
          );
        } else if (state is SearchBookFaliure) {
          return SliverToBoxAdapter(
            child: CustomErrorWidget(errMessage:  state.errMessage),
          );
        } else if (state is SearchBookLoding) {
          return const SliverToBoxAdapter(
            child: Center(child: CircularProgressIndicator(),),
          );
        } else {
          return SliverToBoxAdapter(
            child: Container(),
          );
        }
      },
    );
  }
}