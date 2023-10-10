import 'package:bookly_app/feature/home/presentation/views/widgets/book_detail_section.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/text_button_book_detail.dart';
import 'package:flutter/material.dart';

class BodyBookDetail extends StatelessWidget {
  const BodyBookDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsetsDirectional.symmetric(horizontal: 30),
      child: CustomScrollView(
        slivers: [
          BookDetailSection(),
          SliverToBoxAdapter(
            child: SizedBox(height: 35,),
          ),
          TextButtonBookDetail(),
        ],
      ),
    );
  }
}
