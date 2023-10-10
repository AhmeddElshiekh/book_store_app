
import 'package:bookly_app/feature/home/presentation/views/book_detail_view.dart';
import 'package:flutter/material.dart';

class BookCard extends StatelessWidget {
  const BookCard({super.key,});
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.4/2,
      child: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const BookDetailView(),));

        },
        child: Container(
          decoration:   const BoxDecoration(
              borderRadius: BorderRadiusDirectional.all(Radius.circular(20)),
              image: DecorationImage(image: NetworkImage('https://wallpapers.com/images/hd/cool-profile-picture-87h46gcobjl5e4xu.jpg'),fit: BoxFit.cover)
          ),
        ),
      ),
    );

  }
}