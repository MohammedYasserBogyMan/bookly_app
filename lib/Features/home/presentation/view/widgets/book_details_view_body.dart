import 'package:bookl_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookl_app/Features/home/presentation/view/widgets/book_action.dart';
import 'package:bookl_app/Features/home/presentation/view/widgets/book_details_section.dart';
import 'package:bookl_app/Features/home/presentation/view/widgets/similaer_book_section.dart';
import 'package:flutter/material.dart';
import 'custom_appbar_book_details.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: true,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const CustomAppBarBookDetails(),
                    BookDetailsSection(
                      bookModel: bookModel,
                    ),
                    const SizedBox(
                      height: 30, // مسافة بين العناصر
                    ),
                     BookAction(bookModel: bookModel,),
                    const SimilaerBookSection(),
                    const SizedBox(
                      height: 5,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
