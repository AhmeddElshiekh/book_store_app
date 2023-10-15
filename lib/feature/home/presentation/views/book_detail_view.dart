import 'package:bookly_app/core/models/book_model.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/feature/home/data/repos/home_repo_implementation.dart';
import 'package:bookly_app/feature/home/presentation/manager/list_book_details_cubit/list_book_details_cubit.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/body_book_detail.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailView extends StatelessWidget {
  const BookDetailView({super.key, required this.model});
  final BookModel model;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ListBookDetailsCubit(HomeRepoImp(ApiService(Dio())))..getListBookDetails(category: model.volumeInfo?.categories?[0]),
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.cancel),
          ),
        ),
        body:  BodyBookDetail(model: model),
      ),
    );
  }
}

