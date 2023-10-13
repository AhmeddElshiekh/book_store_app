import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/feature/home/data/repos/home_repo_implementation.dart';
import 'package:bookly_app/feature/home/presentation/manager/horizontal_list_book_cubit/horizontal_list_book_cubit.dart';
import 'package:bookly_app/feature/home/presentation/views/book_detail_view.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/book_card.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/loading_horizontal_list.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

class ListViewHorizontalBookCard extends StatelessWidget {
  const ListViewHorizontalBookCard({super.key,});


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HorizontalListBookCubit(HomeRepoImp(ApiService(Dio())))..getHorizontalBooks(),
      child: BlocBuilder<HorizontalListBookCubit, HorizontalListBookStates>(
        builder: (context, state) {
          if(state is HorizontalListBookSuccessState) {
            return SizedBox(
              height: MediaQuery
                  .of(context)
                  .size
                  .height * .26,
              child: ScrollSnapList(
                scrollPhysics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) =>  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => BookDetailView(model: state.books[index]),));
                    },
                    child: BookCard(model:state.books[index],)),
                itemCount: state.books.length,
                itemSize: 160,
                dynamicItemSize: true,
                onItemFocus: (index) {},
              ),
            );
          }
          else if(state is HorizontalListBookErrorState){
           return  Text(state.errMassage);
          }else{
            return const LoadingHorizontalList();
          }

        },
      ),
    );
  }
}




