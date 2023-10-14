import 'package:bookly_app/feature/home/presentation/manager/check_internet_cubit/check_internet_cubit.dart';
import 'package:bookly_app/feature/search/presentation/manager/search_book_cubit/search_book_cubit.dart';
import 'package:bookly_app/feature/search/presentation/views/widgets/custom_text_filed.dart';
import 'package:bookly_app/feature/search/presentation/views/widgets/sliver_search_book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBookCubit, SearchBookState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsetsDirectional.all(30),
          child: Column(
            children: [
              CustomTextFiled(
                onChange: (value) {
                  BlocProvider.of<SearchBookCubit>(context).val = value;
                  BlocProvider.of<SearchBookCubit>(context).getSearchBooks(
                      search: value);
                },
              ),
              const SizedBox(
                height: 30,
              ),
              BlocListener<CheckInternetCubit, CheckInternetState>(
                listener: (context, state) {
                  if(state is ConnectedState)
                  {
                    BlocProvider.of<SearchBookCubit>(context).getSearchBooks(search: BlocProvider.of<SearchBookCubit>(context).val);
                  }
                },
                child: const Expanded(
                  child: CustomScrollView(
                    slivers: [
                      SliverSearchBookItem(),
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}



