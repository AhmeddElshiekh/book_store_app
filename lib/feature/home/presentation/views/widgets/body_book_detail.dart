import 'package:bookly_app/core/models/book_model.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/book_detail_section.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/sliver_list_book_detail.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/text_button_book_detail.dart';
import 'package:flutter/material.dart';

class BodyBookDetail extends StatelessWidget {
  const BodyBookDetail({super.key, required this.model});
final BookModel model;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsetsDirectional.symmetric(horizontal: 30),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BookDetailSection(model: model,),
            const SizedBox(
              height: 35,
            ),
            TextButtonBookDetail(model: model),
            const SizedBox(
              height: 35,
            ),
             const Text(
              'You can also like',
              style: Styles.textStyle20,
            ),
            const Flexible(
              fit: FlexFit.loose,
              child: SizedBox(
                height: 20,
              ),
            ),
             ListViewBookDetails(model: model,)
          ],
        ),
      ),
    );
  }
}
