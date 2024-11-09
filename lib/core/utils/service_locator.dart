import 'package:bookl_app/Features/home/data/repos/home_repo_impl.dart';
import 'package:bookl_app/Features/search/data/repos/search_repo_impl.dart';
import 'package:bookl_app/core/utils/api_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocato() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      getIt.get<ApiService>(),
    ),
  );

  getIt.registerSingleton<SearchRepoImpl>(
    SearchRepoImpl(
   
      getIt.get<ApiService>(),
      ),
  );
}
