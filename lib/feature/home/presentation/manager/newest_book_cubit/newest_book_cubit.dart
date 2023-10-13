import 'package:bookly_app/feature/home/data/models/book_model.dart';
import 'package:bookly_app/feature/home/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'newest_book_state.dart';

class NewestBookCubit extends Cubit<NewestBookState> {
  NewestBookCubit(this.homeRepo) : super(NewestBookInitial());
  static NewestBookCubit get(context) => BlocProvider.of(context);
  final HomeRepo homeRepo;
  getNewestBooks()async{
    emit(NewestBookLoadingState());
    var result =await homeRepo.fetchNewestBooks();
    result.fold((failure) {
      print(failure.errMessage.toString());
      emit(NewestBookErrorState(failure.errMessage));

    }, (book) {

      emit(NewestBookSuccessState(book));
    });
  }
}

