
import 'package:flutter/material.dart';

class BookCard extends StatelessWidget {
  const BookCard({super.key,});
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.4/2,
      child: Container(
        decoration:   const BoxDecoration(
            borderRadius: BorderRadiusDirectional.all(Radius.circular(20)),
            image: DecorationImage(image: NetworkImage('https://wallpapers.com/images/hd/cool-profile-picture-87h46gcobjl5e4xu.jpg'),fit: BoxFit.cover)
        ),
      ),
    );

  }
}