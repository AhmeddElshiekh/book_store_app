import 'package:bookly_app/core/models/book_model.dart';
import 'package:bookly_app/feature/home/data/repos/home_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'list_book_details_state.dart';

class ListBookDetailsCubit extends Cubit<ListBookDetailsState> {
  ListBookDetailsCubit(this.homeRepo) : super(ListBookDetailsInitial());
  final HomeRepo homeRepo;
  getListBookDetails({required dynamic category})async{
    emit(ListBookDetailsLoadingState());
    var result =await homeRepo.fetchListBooksDetails(category: category);
    result.fold((failure) {
      print(failure.errMessage.toString());
      emit(ListBookDetailsErrorState(failure.errMessage,failure.errIcon));

    }, (book) {

      emit(ListBookDetailsSuccessState(book));
    });
  }
}
