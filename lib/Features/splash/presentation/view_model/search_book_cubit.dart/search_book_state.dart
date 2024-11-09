part of 'search_book_cubit.dart';

sealed class SearchBookState extends Equatable {
  const SearchBookState();

  @override
  List<Object> get props => [];
}

final class SearchBookInitial extends SearchBookState {}
final class SearchBookFaliure extends SearchBookState {
   final String errMessage;

  const SearchBookFaliure({required this.errMessage});
}

final class SearchBookLoding extends SearchBookState {}
final class SearchBookSucsse extends SearchBookState {
  final  List<BookModel> books;

  const SearchBookSucsse({required this.books});
}

