import 'package:bookly_app/feature/home/presentation/manager/check_internet_cubit/check_internet_cubit.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/home_view_body.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/search_icon.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/theme_icon.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/title_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookLayoutView extends StatelessWidget {
  const BookLayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CheckInternetCubit()..checkConnection(),
      child: BlocConsumer<CheckInternetCubit, CheckInternetState>(
        listener: (context, state) {
          if (state is ConnectedState) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                backgroundColor: Colors.green,
                content: Text(state.message),
              ),
            );
          }
          if (state is NotConnectedState) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                backgroundColor: Colors.red,
                content: Text(state.message),
              ),
            );
          }
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const TitleWidget(),
              actions: const [
                SearchIcon(),
                ThemeIcon(),
              ],
            ),
            body: const HomeViewBody(),
          );
        },
      ),
    );
  }
}
