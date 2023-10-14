part of 'horizontal_list_book_cubit.dart';

abstract class HorizontalListBookStates {}

class HorizontalListBookInitialState extends HorizontalListBookStates {}


class HorizontalListBookSuccessState extends HorizontalListBookStates {
  final List<BookModel> books ;

  HorizontalListBookSuccessState(this.books);
}
class HorizontalListBookErrorState extends HorizontalListBookStates {
  final String errMassage;
  final IconData errIcon;

  HorizontalListBookErrorState(this.errMassage, this.errIcon);

}
class HorizontalListBookLoadingState extends HorizontalListBookStates {}
