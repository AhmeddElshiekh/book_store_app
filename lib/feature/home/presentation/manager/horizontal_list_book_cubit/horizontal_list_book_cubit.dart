import 'package:bookly_app/feature/home/data/models/book_model.dart';
import 'package:bookly_app/feature/home/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'horizontal_list_book_state.dart';

class HorizontalListBookCubit extends Cubit<HorizontalListBookStates> {
  HorizontalListBookCubit(this.homeRepo) : super(HorizontalListBookInitialState());
  static HorizontalListBookCubit get(context) => BlocProvider.of(context);
  final HomeRepo homeRepo;
   getHorizontalBooks()async{
     emit(HorizontalListBookLoadingState());
    var result =await homeRepo.fetchListHorizontalBooks();
     result.fold((failure) {
       print(failure.errMessage.toString());
       emit(HorizontalListBookErrorState(failure.errMessage));

     }, (book) {

       emit(HorizontalListBookSuccessState(book));
     });
   }
}
