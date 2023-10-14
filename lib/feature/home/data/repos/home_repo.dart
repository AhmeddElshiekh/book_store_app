import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/feature/home/data/models/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo{

  Future <Either<Failure,List<BookModel>>>fetchNewestBooks();
  Future <Either<Failure,List<BookModel>>>fetchListHorizontalBooks();
  Future <Either<Failure,List<BookModel>>>fetchListBooksDetails({required dynamic category});
  Future <Either<Failure,List<BookModel>>>fetchSearchBooks({required String search});


}