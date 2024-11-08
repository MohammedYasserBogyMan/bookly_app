import 'package:bookl_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookl_app/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'similar_book_state.dart';

class SimilarBookCubit extends Cubit<SimilarBookState> {
  SimilarBookCubit(
    this.homeRepo,
  ) : super(SimilarBookInitial());

  final HomeRepo homeRepo;
  Future<void> fetchSimlaerBooks(final String catigory) async {
    emit(SimilarBookLoading());
    var result = await homeRepo.fetchSimlaerBooks(catigory: catigory);
    result.fold((failure) {
      emit(SimilarBookError(failure.errMessage));
    }, (books) {
      emit(SimilarBookSuccess(books));
    });
  }
}
