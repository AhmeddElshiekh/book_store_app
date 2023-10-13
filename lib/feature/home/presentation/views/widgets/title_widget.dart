
import 'package:bookly_app/core/change_theme_cubit/change_them_cubit.dart';
import 'package:bookly_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChangeThemCubit, ChangeThemState>(

      builder: (context, state) {
        var cubit = ChangeThemCubit.get(context);
        return Padding(
          padding: const EdgeInsetsDirectional.only(
            start: 24,
          ),
          child: Image(
            image: const AssetImage(Assets.imagesLogo),
            height: 24,
            color:
            cubit.isLight == false ? Colors.black : Colors.white,
          ),
        );
      },
    );
  }
}
