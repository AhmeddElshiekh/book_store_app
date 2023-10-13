import 'package:bookly_app/feature/home/presentation/manager/list_book_details_cubit/list_book_details_cubit.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/book_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListViewBookDetails extends StatelessWidget {
  const ListViewBookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ListBookDetailsCubit, ListBookDetailsState>(
      builder: (context, state) {
        if(state is ListBookDetailsSuccessState){
          return SizedBox(
              height: 180,
              child: ListView.builder(
                itemCount: state.model.length,
                itemBuilder: (context, index) =>
                    Padding(
                      padding: const EdgeInsetsDirectional.symmetric(
                          horizontal: 7),
                      child: BookCard(model:state.model[index] ),
                    ),
                scrollDirection: Axis.horizontal,
              ));

        }
        else if(state is ListBookDetailsErrorState){
          return Text(state.errMessage);
        }else{
          return CircularProgressIndicator();
        }
      },
    );
  }
}
