import 'package:bookly/core/erorrs/failures.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo{
 Future<Either< Failure,List<BookModel>>> fetchBestSellerBooks();
 Future<Either< Failure,List<BookModel>>> fetchFeaturedBooks();
}                                                                     //الحاجات اللي هتتعمل مش تنفيذها اذاي