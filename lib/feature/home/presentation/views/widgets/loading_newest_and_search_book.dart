import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class LoadingNewestAndSearchBooks extends StatelessWidget {
  const LoadingNewestAndSearchBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(vertical: 10),
      child: Shimmer.fromColors(
        baseColor: Colors.grey[500]!,
        highlightColor: Colors.grey[100]!,
        child: Row(
          children: [
            SizedBox(
              height: MediaQuery
                  .of(context)
                  .size
                  .height * .16,
              child:   AspectRatio(
                aspectRatio: 1.4/2,
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadiusDirectional.all(Radius.circular(20)),
                    color: Colors.white,

                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 20,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadiusDirectional.all(Radius.circular(20)),
                      color: Colors.white,

                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 20,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadiusDirectional.all(Radius.circular(20)),
                      color: Colors.white,

                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 20,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadiusDirectional.all(Radius.circular(20)),
                      color: Colors.white,

                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 20,
                        width: 80,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadiusDirectional.all(Radius.circular(20)),
                          color: Colors.white,

                        ),
                      ),
                      const Spacer(),
                      Container(
                        height: 20,
                        width: 70,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadiusDirectional.all(Radius.circular(20)),
                          color: Colors.white,

                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

