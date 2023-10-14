import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/feature/home/data/repos/home_repo_implementation.dart';
import 'package:bookly_app/feature/search/presentation/manager/search_book_cubit/search_book_cubit.dart';
import 'package:bookly_app/feature/search/presentation/views/widgets/search_view_body.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchBookCubit(HomeRepoImp(ApiService(Dio()))),
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
        body:  const SearchViewBody(),
      ),
    );
  }
}
