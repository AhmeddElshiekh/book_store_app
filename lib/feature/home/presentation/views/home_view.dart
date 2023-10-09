import 'package:bookly_app/feature/home/presentation/views/widgets/list_view_horizontal_book_card.dart';
import 'package:bookly_app/generated/assets.dart';
import 'package:flutter/material.dart';

class BookLayoutView extends StatelessWidget {
  const BookLayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsetsDirectional.only(
            start: 24,
          ),
          child: Image(image: AssetImage(Assets.imagesLogo), height: 24),
        ),
        actions: [
          Padding(
            padding: const EdgeInsetsDirectional.only(end: 24),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search_rounded, size: 28)),
          ),
        ],
      ),
      body: const Padding(
        padding: EdgeInsetsDirectional.only(top: 20),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: ListViewHorizontalBookCard(),
            ),

          ],
        ),
      ),
    );
  }
}
