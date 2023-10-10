import 'package:bookly_app/core/utils/functions/styles.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';

class TextButtonBookDetail extends StatelessWidget {
  const TextButtonBookDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Row(
        children: [
          Expanded(
            child: CustomTextButton(
              text: 'Free',
              backGroundColor: Colors.white,
              style: Styles.textStyle20
                  .copyWith(color: Colors.black, fontFamily: 'GT Sectra Fine'),
              border: const BorderRadiusDirectional.only(
                  bottomStart: Radius.circular(12),
                  topStart: Radius.circular(12)),
            ),
          ),
          Expanded(
            child: CustomTextButton(
              text: 'Free Preview',
              backGroundColor: const Color(0xffEF8262),
              style: Styles.textStyle20.copyWith(color: Colors.white),
              border: const BorderRadiusDirectional.only(
                  topEnd: Radius.circular(12), bottomEnd: Radius.circular(12)),
            ),
          ),
        ],
      ),
    );
  }
}
