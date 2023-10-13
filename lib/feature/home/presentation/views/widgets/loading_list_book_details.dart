import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class LoadingListBookDetails extends StatelessWidget {
  const LoadingListBookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) =>
            Shimmer.fromColors(
              baseColor: Colors.grey[500]!,
              highlightColor: Colors.grey[100]!,
              child: Padding(
                padding: const EdgeInsetsDirectional.symmetric(
                    horizontal: 7),
                child: AspectRatio(
                  aspectRatio: 1.4/2,
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadiusDirectional.all(Radius.circular(20)),
                      color: Colors.white,

                    ),
                  ),
                ) ,
              ),
            ),
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
