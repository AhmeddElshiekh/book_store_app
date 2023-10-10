import 'package:bookly_app/core/utils/functions/styles.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/book_card.dart';
import 'package:flutter/material.dart';

class BookDetailSection extends StatelessWidget {
  const BookDetailSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsetsDirectional.symmetric(
                horizontal: MediaQuery.of(context).size.width * .2,
                vertical: 20),
            child: const BookCard(),
          ),
          const Center(
              child: Text(
                'The Jungle Book',
                style: Styles.textStyle30,
              )),
          Center(
              child: Text(
                'Rudyard Kipling',
                style:
                Styles.textStyle20.copyWith(fontFamily: 'GT Sectra Fine'),
              )),
        ],
      ),
    );
  }
}
