import 'package:bookly/features/home/index.dart';
import 'package:bookly/features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:bookly/index.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget{
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.1),
            child: const CustomBookImage(),
          ),
          const SizedBox(
            height: 43,
          ),
          Text(
            'The Jungle Book',
            style: Styles.textStyle20.copyWith(
              fontSize: 30,
              fontWeight: FontWeight.bold
            ),
            ),
            const SizedBox(
            height: 6,
          ),
            Opacity(
              opacity: 0.7,
              child: Text(
              'Rudyard Kipling',
              style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic
              ),
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            const BookRating(
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            const SizedBox(
              height: 37,
            ),
            const BooksAction(),
            const SizedBox(
              height: 50,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'You can also like',
              style: Styles.textStyle14.copyWith(
                fontWeight: FontWeight.w600,
              ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const SimilarBooksListView(),
        ],
      ),
    );
  }
}

