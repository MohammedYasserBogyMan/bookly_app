import 'package:bookl_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookl_app/Features/home/data/repos/home_repo_impl.dart';
import 'package:bookl_app/Features/home/presentation/view/book_details_view.dart';
import 'package:bookl_app/Features/home/presentation/view/home_view.dart';
import 'package:bookl_app/Features/home/presentation/view_model/similer_books_cubit/similar_book_cubit.dart';
import 'package:bookl_app/Features/search/presentation/view/search_view.dart';
import 'package:bookl_app/Features/search/data/repos/search_repo_impl.dart';
import 'package:bookl_app/Features/splash/presentation/view_model/search_book_cubit.dart/search_book_cubit.dart';
import 'package:bookl_app/Features/splash/presentation/views/splash_view.dart';
import 'package:bookl_app/core/utils/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static const kSearchView = '/SearchView';

  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => BlocProvider(
          create: (context) => SearchBookCubit(
            getIt.get<SearchRepoImpl>(),
          ),
          child: const SearchView(),
        ),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBookCubit(getIt.get<HomeRepoImpl>()),
          child: BookDetailsView(
            bookModel: state.extra as BookModel,
          ),
        ),
      ),
    ],
  );
}
