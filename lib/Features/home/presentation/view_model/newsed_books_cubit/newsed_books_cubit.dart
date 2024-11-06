import 'package:bloc/bloc.dart';
import 'package:bookl_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookl_app/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newsed_books_state.dart';

class NewsedBooksCubit extends Cubit<NewsedBooksState> {
  NewsedBooksCubit(this.homeRepo) : super(NewsetBooksInitial());

  final HomeRepo homeRepo;
  Future<void> fetchNewestBooks() async {
    emit(NewsetBooksLoading());
    var result = await homeRepo.fetchBestBooks();
    result.fold((failure) {
      emit(NewsetBooksFailure(failure.errMessage));
    }, (books) {
      emit(NewsetBooksSuccess(books));
    });
  }
}
