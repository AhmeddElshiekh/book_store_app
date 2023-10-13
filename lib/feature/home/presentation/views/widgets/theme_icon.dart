import 'package:bookly_app/core/change_theme_cubit/change_them_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeIcon extends StatelessWidget {
  const ThemeIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChangeThemCubit, ChangeThemState>(
      builder: (context, state) {
        var cubit = ChangeThemCubit.get(context);
        return IconButton(
          onPressed: () {
            cubit.changeMode();
          },
          icon: cubit.isLight == false
              ? const Icon(
            Icons.light_mode,
            color: Colors.yellow,
            size: 30,
          )
              : const Icon(
            Icons.dark_mode,
            color: Colors.deepPurple,
            size: 30,
          ),
        );
      },
    );
  }
}
