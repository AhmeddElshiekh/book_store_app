import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/feature/home/data/models/book_model.dart';
import 'package:bookly_app/feature/home/presentation/manager/newest_book_cubit/newest_book_cubit.dart';
import 'package:bookly_app/feature/home/presentation/views/book_detail_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'book_card.dart';

class NewestBookItem extends StatelessWidget {
  const NewestBookItem({super.key, required this.model,});
  final BookModel model ;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBookCubit, NewestBookState>(
      builder: (context, state) {
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
                      const Text(
                        'Free',
                        style: Styles.textStyle30,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}


// class Loading extends StatelessWidget {
//   const Loading({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return
//       Column(
//         children: [
//           Shimmer.fromColors(
//             baseColor: Colors.grey[500]!,
//             highlightColor: Colors.grey[100]!,
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Container(
//                   decoration: const BoxDecoration(
//                     borderRadius: BorderRadiusDirectional.all(Radius.circular(20)),
//                     color: Colors.white,
//
//                   ),
//                   height: 100,
//                   width: 100,
//                 ),
//                 const SizedBox(
//                   width: 10,
//                 ),
//                 Expanded(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: <Widget>[
//                       const SizedBox(
//                         height: 10,
//                       ),
//                       Container(
//                         decoration: const BoxDecoration(
//                           borderRadius: BorderRadiusDirectional.all(Radius.circular(20)),
//                           color: Colors.white,
//
//                         ),
//                         width: double.infinity,
//                         height: 18.0,
//                       ),
//                       const SizedBox(
//                         height: 10,
//                       ),
//                       Container(
//                         decoration: const BoxDecoration(
//                           borderRadius: BorderRadiusDirectional.all(Radius.circular(20)),
//                           color: Colors.white,
//
//                         ),
//                         width: double.infinity,
//                         height: 14.0,
//                       ),
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           )
//
//         ],
//       );
//
//   }
// }
