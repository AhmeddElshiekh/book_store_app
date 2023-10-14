part of 'newest_book_cubit.dart';


abstract class NewestBookState {}

class NewestBookInitial extends NewestBookState {}
class NewestBookSuccessState extends NewestBookState {
  final List<BookModel> books ;

  NewestBookSuccessState(this.books);
}
class NewestBookErrorState extends NewestBookState {
  final String errMassage;
  final IconData errIcon;

  NewestBookErrorState(this.errMassage, this.errIcon);

}
class NewestBookLoadingState extends NewestBookState {}
