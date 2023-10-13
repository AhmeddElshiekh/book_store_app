import 'package:bookly_app/feature/home/presentation/manager/newest_book_cubit/newest_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'newest_boot_item.dart';

class SliverListNewestBookItem extends StatelessWidget {
  const SliverListNewestBookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBookCubit, NewestBookState>(
      builder: (context, state) {
       if(state is NewestBookSuccessState){
         return SliverList(
           delegate: SliverChildBuilderDelegate(
                 (context, index) =>
              NewestBookItem(model:state.books[index] ),
             childCount: state.books.length,

           ),
         );

       }else if(state is NewestBookErrorState){
        return SliverToBoxAdapter(
          child: Text(state.errMassage),
        );
       }
       else{
         return const SliverToBoxAdapter(
           child: Center(child: CircularProgressIndicator()),
         );
       }
      },
    );
  }
}