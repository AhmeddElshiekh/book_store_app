import 'package:bookly_app/feature/home/data/models/book_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BookCard extends StatelessWidget {
  const BookCard({
    super.key,
    required this.model,
  });

  final BookModel model;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.4 / 2,
      child:
      ClipRRect(
        borderRadius: const BorderRadiusDirectional.all(Radius.circular(20)),
        child: CachedNetworkImage(
          fit: BoxFit.cover,
          imageUrl: '${model.volumeInfo!.imageLinks?.thumbnail}' ?? '',
          placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
          errorWidget: (context, url, error) => const Center(child: Icon(Icons.error)),
        ),
      ),

    );
  }
}
