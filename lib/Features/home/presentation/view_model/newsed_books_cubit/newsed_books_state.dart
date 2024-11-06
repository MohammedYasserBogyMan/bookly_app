part of 'newsed_books_cubit.dart';

sealed class NewsedBooksState extends Equatable {
  const NewsedBooksState();

  @override
  List<Object> get props => [];
}

class NewsetBooksInitial extends NewsedBooksState {}

class NewsetBooksLoading extends NewsedBooksState {}

class NewsetBooksSuccess extends NewsedBooksState {
  final List<BookModel> books;

  const NewsetBooksSuccess(this.books);
}

class NewsetBooksFailure extends NewsedBooksState {
  final String errMessage;

  const NewsetBooksFailure(this.errMessage);
}
