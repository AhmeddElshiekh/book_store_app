import 'package:bookly_app/feature/home/presentation/views/widgets/error_message.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/loading_newest_and_search_book.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/newest_and_search_book_item.dart';
import 'package:bookly_app/feature/search/presentation/manager/search_book_cubit/search_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SliverSearchBookItem extends StatelessWidget {
  const SliverSearchBookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBookCubit, SearchBookState>(
      builder: (context, state) {
        if(state is SearchBookSuccessState){
          return SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) =>
                  NewestAndSearchBookItem(model:state.books[index] ),
              childCount: state.books.length,

            ),
          );

        }else if(state is SearchBookErrorState){
          return SliverFillRemaining(
            child:  ErrorMessage(errIcon: state.errIcon, errMessage: state.errMassage)
          );
        }else if(state is SearchBookInitial){
          return const SliverFillRemaining(
            child: Center(child: Text('Please enter your book Name',style: TextStyle(
              fontSize: 20
            ),)),
          );
        }
        else{
          return SliverList(delegate: SliverChildBuilderDelegate(
                (context, index) =>
            const LoadingNewestAndSearchBooks(),
            childCount: 10,

          ),
          );
        }
      },
    );
  }
}