import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/feature/home/data/models/book_model.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/book_card.dart';
import 'package:flutter/material.dart';

class BookDetailSection extends StatelessWidget {
  const BookDetailSection({super.key, required this.model});
  final BookModel model;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsetsDirectional.symmetric(
              horizontal: MediaQuery.of(context).size.width * .2,
              vertical: 20),
          child:  BookCard(model: model,),
        ),
         Text(
           model.volumeInfo?.title ??'',
           style: Styles.textStyle30,
         ),
        Text(
          model.volumeInfo?.authors?[0] ?? '',
          style:
          Styles.textStyle20.copyWith(fontFamily: 'GT Sectra Fine'),
        ),
      ],
    );
  }
}
