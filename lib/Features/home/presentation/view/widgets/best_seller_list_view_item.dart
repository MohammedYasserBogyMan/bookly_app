import 'package:bookl_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookl_app/Features/home/presentation/view/widgets/bool_rating.dart';
import 'package:bookl_app/core/utils/app_router.dart';
import 'package:bookl_app/core/utils/styels.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BooksListViewItem extends StatelessWidget {
  const BooksListViewItem({super.key, required this.books});
  final BookModel books;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView, extra: books);
      },
      child: Row(
        children: [
          SizedBox(
            height: 140,
            child: AspectRatio(
              aspectRatio: 2.7 / 4,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                      books.volumeInfo.imageLinks!.thumbnail,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Text(
                    books.volumeInfo.title,
                    style: Styels.textStyel20,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Text(
                    books.volumeInfo.authors.isNotEmpty
                        ? books.volumeInfo.authors.first
                        : 'Unknown',
                    style: Styels.textStyel14),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Free', style: Styels.textStyel20),
                    BookRating(
                      rating: books.volumeInfo.rating ?? 0,
                      count: books.volumeInfo.pageCount ?? 0,
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
