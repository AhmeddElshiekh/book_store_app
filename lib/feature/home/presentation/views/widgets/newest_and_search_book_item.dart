import 'package:bookly_app/core/models/book_model.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/feature/home/presentation/views/book_detail_view.dart';
import 'package:flutter/material.dart';
import 'book_card.dart';

class NewestAndSearchBookItem extends StatelessWidget {
  const NewestAndSearchBookItem({super.key, required this.model,});
  final BookModel model ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(vertical: 10),
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) =>  BookDetailView(model: model,),));
        },
        child: Row(
          children: [
            SizedBox(
              height: MediaQuery
                  .of(context)
                  .size
                  .height * .16,
              child:  BookCard(model:model,),
            ),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    model.volumeInfo?.title ?? '',
                    maxLines: 2,
                    style: Styles.textStyle20.copyWith(
                      fontFamily: 'GT Sectra Fine',
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    model.volumeInfo?.authors?[0]??'',
                    maxLines: 2,
                    style: Styles.textStyle18.copyWith(
                        overflow: TextOverflow.ellipsis, color: Colors.grey),
                  ),
                   Row(
                    children: [
                       const Text(
                        'Free',
                        style: Styles.textStyle30,
                      ),
                      const Spacer(),
                      const Icon(Icons.star,color: Colors.yellow,),
                      Text('${model.volumeInfo?.averageRating ?? '0'}',style: Styles.textStyle18,),
                      Text('(${model.volumeInfo?.ratingsCount ?? '0'})',style: const TextStyle(
                        color: Colors.grey,
                      ), )

                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );

  }
}

