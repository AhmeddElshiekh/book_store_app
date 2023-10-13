import 'package:flutter/material.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';
import 'package:shimmer/shimmer.dart';

class LoadingHorizontalList extends StatelessWidget {
  const LoadingHorizontalList({super.key});

  @override
  Widget build(BuildContext context) {
    return
      SizedBox(
        height: MediaQuery
            .of(context)
            .size
            .height * .26,
        child: ScrollSnapList(
          scrollPhysics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) =>   Shimmer.fromColors(
            baseColor: Colors.grey[500]!,
            highlightColor: Colors.grey[100]!,
            child: AspectRatio(
              aspectRatio: 1.4/2,
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadiusDirectional.all(Radius.circular(20)),
                  color: Colors.white,

                ),
              ),
            ),
          ) ,
          itemCount: 5,
          itemSize: 160,
          dynamicItemSize: true,
          onItemFocus: (index) {},
        ),
      );


  }
}
