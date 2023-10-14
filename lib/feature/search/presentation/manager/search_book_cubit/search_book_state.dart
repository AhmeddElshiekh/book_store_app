part of 'search_book_cubit.dart';

abstract class SearchBookState {}

class SearchBookInitial extends SearchBookState {}

class SearchBookSuccessState extends SearchBookState {
  final List<BookModel> books ;

  SearchBookSuccessState(this.books);
}
class SearchBookErrorState extends SearchBookState {
  final String errMassage;
  final IconData errIcon;

  SearchBookErrorState(this.errMassage, this.errIcon);

}
class SearchBookLoadingState extends SearchBookState {}