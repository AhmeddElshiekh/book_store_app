import 'package:bookly_app/feature/home/presentation/views/widgets/book_card.dart';
import 'package:flutter/material.dart';

class SliverListBookDetail extends StatelessWidget {
  const SliverListBookDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: SizedBox(
            height: 180,
            child: ListView.builder(
               itemCount: 10,
              itemBuilder: (context, index) => const Padding(
                padding: EdgeInsetsDirectional.symmetric(horizontal: 7),
                child: BookCard(),
              ),
              scrollDirection: Axis.horizontal,
            )));

  }
}
