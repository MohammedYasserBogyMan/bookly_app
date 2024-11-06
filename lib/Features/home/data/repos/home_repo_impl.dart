import 'package:bookl_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookl_app/Features/home/data/repos/home_repo.dart';
import 'package:bookl_app/core/errors/failure.dart';
import 'package:bookl_app/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> fetchBestBooks() async {
    try {
      var data = await apiService.get(
          endPoint: 'volumes?q=search+terms&Filtering=free-ebook');

      List<BookModel> books = [];

      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }

      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFuaturedBooks() {
    // TODO: implement fetchFuaturedBooks
    throw UnimplementedError();
  }
}
