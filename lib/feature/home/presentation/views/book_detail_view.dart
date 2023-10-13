import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/feature/home/data/models/book_model.dart';
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


// Column(
// children: [
// Shimmer.fromColors(
// baseColor: Colors.grey[500]!,
// highlightColor: Colors.grey[100]!,
// child: Row(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Container(
// decoration: const BoxDecoration(
// borderRadius: BorderRadiusDirectional.all(Radius.circular(20)),
// color: Colors.white,
//
// ),
// height: 100,
// width: 100,
// ),
// const SizedBox(
// width: 10,
// ),
// Expanded(
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: <Widget>[
// const SizedBox(
// height: 10,
// ),
// Container(
// decoration: const BoxDecoration(
// borderRadius: BorderRadiusDirectional.all(Radius.circular(20)),
// color: Colors.white,
//
// ),
// width: double.infinity,
// height: 18.0,
// ),
// const SizedBox(
// height: 10,
// ),
// Container(
// decoration: const BoxDecoration(
// borderRadius: BorderRadiusDirectional.all(Radius.circular(20)),
// color: Colors.white,
//
// ),
// width: double.infinity,
// height: 14.0,
// ),
// ],
// ),
// )
// ],
// ),
// )
//
// ],
// ),
