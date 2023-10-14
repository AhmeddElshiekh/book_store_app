import 'package:bookly_app/feature/home/data/models/book_model.dart';
import 'package:bookly_app/feature/home/presentation/manager/check_internet_cubit/check_internet_cubit.dart';
import 'package:bookly_app/feature/home/presentation/manager/list_book_details_cubit/list_book_details_cubit.dart';
import 'package:bookly_app/feature/home/presentation/views/book_detail_view.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/book_card.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/error_message.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/loading_list_book_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListViewBookDetails extends StatelessWidget {
  const ListViewBookDetails({super.key, required this.model});
  final BookModel model;
  @override
  Widget build(BuildContext context) {
    return BlocListener<CheckInternetCubit, CheckInternetState>(
      listener: (context, state) {
        if(state is ConnectedState){
          BlocProvider.of<ListBookDetailsCubit>(context).getListBookDetails(category: model.volumeInfo?.categories?[0] ?? 0 );
        }
      },
      child: BlocBuilder<ListBookDetailsCubit, ListBookDetailsState>(
        builder: (context, state) {
          if (state is ListBookDetailsSuccessState) {
            return SizedBox(
              height: 180,
              child: ListView.builder(
                itemCount: state.model.length,
                itemBuilder: (context, index) =>
                    Padding(
                      padding: const EdgeInsetsDirectional.symmetric(
                          horizontal: 7),
                      child: InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                              context, MaterialPageRoute(builder: (context) =>
                                BookDetailView(model: state.model[index]),),);
                          },
                          child: BookCard(model: state.model[index])),
                    ),
                scrollDirection: Axis.horizontal,
              ),
            );
          }
          else if (state is ListBookDetailsErrorState) {
            return ErrorMessage(
                errIcon: state.errIcon, errMessage: state.errMessage);
          } else {
            return const LoadingListBookDetails();
          }
        },
      ),
    );
  }
}
