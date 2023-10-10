import 'package:bookly_app/feature/home/presentation/views/widgets/sliver_list_newest_item.dart';
import 'package:bookly_app/feature/search/presentation/views/widgets/custom_text_filed.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsetsDirectional.all(30),
      child: Column(
        children: [
          CustomTextFiled(
            onChange: (value){},
          ),
          const SizedBox(
            height: 30,
          ),
          const Expanded(
            child: CustomScrollView(
              slivers: [
                SliverListNewestBookItem(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
