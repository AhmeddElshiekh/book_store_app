import 'package:bookly_app/feature/home/presentation/views/widgets/book_card.dart';
import 'package:flutter/material.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

class ListViewHorizontalBookCard extends StatelessWidget {
  const ListViewHorizontalBookCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height *.26,
      child: ScrollSnapList(
        scrollPhysics: const BouncingScrollPhysics(),
        itemBuilder:(p0, p1) =>  const BookCard(),
        itemCount: 10,
        itemSize: 160,
        dynamicItemSize: true,
        onItemFocus: (index ) {},
      ),
    );
  }
}
