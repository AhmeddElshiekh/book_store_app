
import 'package:bookly_app/core/utils/functions/styles.dart';
import 'package:flutter/material.dart';
import 'book_card.dart';

class NewestBookItem extends StatelessWidget {
  const NewestBookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(vertical: 10),
      child: Row(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .16,
            child: const BookCard(),
          ),
          const SizedBox(
            width: 30,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hary Potter and the Goblet of Fire',
                  maxLines: 2,
                  style: Styles.textStyle20.copyWith(
                    fontFamily: 'GT Sectra Fine',
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Text(
                  'J.k Rowling',
                  maxLines: 2,
                  style: Styles.textStyle18.copyWith(
                      overflow: TextOverflow.ellipsis, color: Colors.grey),
                ),
                const Text(
                  'Free',
                  style: Styles.textStyle30,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
