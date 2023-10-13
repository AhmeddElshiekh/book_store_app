import 'package:bookly_app/feature/search/presentation/views/search_view.dart';
import 'package:flutter/material.dart';

class SearchIcon extends StatelessWidget {
  const SearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsetsDirectional.only(end: 24),
      child: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SearchView(),
              ),
            );
          },
          icon: const Icon(Icons.search_rounded, size: 28)),
    );
  }
}

