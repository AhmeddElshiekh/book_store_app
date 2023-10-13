import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/feature/home/data/repos/home_repo_implementation.dart';
import 'package:bookly_app/feature/home/presentation/manager/newest_book_cubit/newest_book_cubit.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/list_view_horizontal_book_card.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/sliver_list_newest_item.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewestBookCubit(HomeRepoImp(ApiService(Dio())))..getNewestBooks(),
      child: const Padding(
        padding: EdgeInsetsDirectional.only(top: 20, end: 30, start: 30),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: ListViewHorizontalBookCard(),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsetsDirectional.only(top: 40, bottom: 10),
                child: Text(
                  'Newest Book',
                  style: Styles.textStyle20,
                ),
              ),
            ),
            SliverListNewestBookItem()

          ],
        ),
      ),
    );
  }
}
