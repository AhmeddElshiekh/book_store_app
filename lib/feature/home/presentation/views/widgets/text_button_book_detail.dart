import 'package:bookly_app/core/models/book_model.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TextButtonBookDetail extends StatelessWidget {
  const TextButtonBookDetail({super.key, required this.model});

  final BookModel model;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomTextButton(
            text: 'Free',
            backGroundColor: Colors.grey,
            style: Styles.textStyle20
                .copyWith(color: Colors.white, fontFamily: 'GT Sectra Fine'),
            border: const BorderRadiusDirectional.only(
                bottomStart: Radius.circular(12),
                topStart: Radius.circular(12)),
          ),
        ),
        Expanded(
          child: CustomTextButton(
            onPressed: () async {
              final Uri url = Uri.parse(model.volumeInfo!.previewLink!);
              if (!await launchUrl(url)) {
                throw Exception('Could not launch $url');
              }
            },
            text: 'Free Preview',
            backGroundColor: const Color(0xffEF8262),
            style: Styles.textStyle20.copyWith(color: Colors.white),
            border: const BorderRadiusDirectional.only(
                topEnd: Radius.circular(12), bottomEnd: Radius.circular(12)),
          ),
        ),
      ],
    );
  }
}
