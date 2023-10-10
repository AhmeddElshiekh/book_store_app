
import 'package:flutter/material.dart';
import 'newest_boot_item.dart';

class SliverListNewestBookItem extends StatelessWidget {
  const SliverListNewestBookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
            (context, index) =>
        const NewestBookItem(),
        childCount: 10,
      ),
    );
  }
}