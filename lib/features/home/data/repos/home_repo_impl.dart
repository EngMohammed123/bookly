import 'package:bookly/core/erorrs/failures.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService,);
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewsetBooks() async{
    try {
  var data = await apiService.get(
    endPoints: 'volumes?Filtering=free-ebooks&Sorting=newest&q=subject:Programming');

    List<BookModel> books = [];

    for(var item in data['items']){
      books.add(BookModel.fromJson(item));
    }

    return right(books);

} on Exception catch (e) {
  return left(ServerFailure());
}
  }


  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }

}
