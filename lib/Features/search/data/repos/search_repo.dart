import 'package:bookl_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookl_app/core/errors/failure.dart';

import 'package:dartz/dartz.dart';

abstract class SearchRepo {
  Future<Either<Failure, List<BookModel>>> fetchSearchResult(
      {required String name});
}