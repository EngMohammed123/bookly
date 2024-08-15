import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

sealed class NewsetBooksState extends Equatable {
  const NewsetBooksState();

  @override
  List<Object> get props => [];
}

class NewsetBooksInitial extends NewsetBooksState {}

class NewsetBooksLoading extends NewsetBooksState {}

class NewsetBooksFailure extends NewsetBooksState {
  final String errMessage;

  const NewsetBooksFailure(this.errMessage);
}

class NewsetBooksSuccess extends NewsetBooksState {
  final List<BookModel> books;

  const NewsetBooksSuccess(this.books);
}
