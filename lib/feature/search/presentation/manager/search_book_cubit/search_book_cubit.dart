import 'package:bookly_app/feature/home/data/models/book_model.dart';
import 'package:bookly_app/feature/home/data/repos/home_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'search_book_state.dart';

class SearchBookCubit extends Cubit<SearchBookState> {
  SearchBookCubit(this.homeRepo) : super(SearchBookInitial());
  final HomeRepo homeRepo;
  late String val;

  getSearchBooks({required String search})async{
    emit(SearchBookLoadingState());
    var result =await homeRepo.fetchSearchBooks(search: search);
    result.fold((failure) {
      print(failure.errMessage.toString());
      emit(SearchBookErrorState(failure.errMessage,failure.errIcon));

    }, (book) {

      emit(SearchBookSuccessState(book));
    });
  }
}
