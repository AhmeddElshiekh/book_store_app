import 'package:bookly_app/feature/home/presentation/manager/check_internet_cubit/check_internet_cubit.dart';
import 'package:bookly_app/feature/home/presentation/manager/newest_book_cubit/newest_book_cubit.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/error_message.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/loading_newest_and_search_book.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/newest_and_search_book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SliverListNewestBookItem extends StatelessWidget {
  const SliverListNewestBookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<CheckInternetCubit, CheckInternetState>(
      listener: (context, state) {
        if(state is ConnectedState){
          BlocProvider.of<NewestBookCubit>(context).getNewestBooks();
        }

      },
      child: BlocBuilder<NewestBookCubit, NewestBookState>(
        builder: (context, state) {
          if (state is NewestBookSuccessState) {
            return SliverList(
              delegate: SliverChildBuilderDelegate(
                    (context, index) =>
                    NewestAndSearchBookItem(model: state.books[index]),
                childCount: state.books.length,
              ),
            );
          } else if (state is NewestBookErrorState) {
            return SliverFillRemaining(
                child: ErrorMessage(
                    errIcon: state.errIcon, errMessage: state.errMassage));
          } else {
            return SliverList(
              delegate: SliverChildBuilderDelegate(
                    (context, index) => const LoadingNewestAndSearchBooks(),
                childCount: 10,
              ),
            );
          }
        },
      ),
    );
  }
}
