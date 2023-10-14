part of 'list_book_details_cubit.dart';

abstract class ListBookDetailsState {}

class ListBookDetailsInitial extends ListBookDetailsState {}
class ListBookDetailsSuccessState extends ListBookDetailsState {
  final List<BookModel> model ;

  ListBookDetailsSuccessState(this.model);
}
class ListBookDetailsErrorState extends ListBookDetailsState {
  final String errMessage;
  final IconData errIcon;

  ListBookDetailsErrorState(this.errMessage, this.errIcon);
}
class ListBookDetailsLoadingState extends ListBookDetailsState {}
