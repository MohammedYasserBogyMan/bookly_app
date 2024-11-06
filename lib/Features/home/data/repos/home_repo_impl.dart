import 'package:bookl_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookl_app/Features/home/data/repos/home_repo.dart';
import 'package:bookl_app/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks() {
    // TODO: implement fetchBestSellerBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFuaturedBooks() {
    // TODO: implement fetchFuaturedBooks
    throw UnimplementedError();
  }
}
