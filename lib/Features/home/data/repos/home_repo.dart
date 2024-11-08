import 'package:bookl_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookl_app/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchBestBooks();
  Future<Either<Failure, List<BookModel>>> fetchFuaturedBooks();
  Future<Either<Failure, List<BookModel>>> fetchSimlaerBooks(
      {required String catigory});
}
