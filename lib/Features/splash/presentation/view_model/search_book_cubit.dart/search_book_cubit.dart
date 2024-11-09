import 'package:bookl_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookl_app/Features/search/data/repos/search_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'search_book_state.dart';

class SearchBookCubit extends Cubit<SearchBookState> {
  SearchBookCubit(this.searchRepo) : super(SearchBookInitial());

    final SearchRepo searchRepo;

  Future<void> fetchSearchBooks({required String bookName}) async {
    emit(SearchBookLoding());
    var result = await searchRepo.fetchSearchResult(name: bookName);

    result.fold(
      (failure) => emit(
        SearchBookFaliure(errMessage: failure.errMessage),
      ),
      (books) => emit(
        SearchBookSucsse(books: books),
      ),
    );
  }
}
