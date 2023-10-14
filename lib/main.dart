import 'package:bookly_app/core/bloc_observer/bloc_observer.dart';
import 'package:bookly_app/core/change_theme_cubit/change_them_cubit.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/core/utils/cache_helper.dart';
import 'package:bookly_app/feature/home/data/repos/home_repo_implementation.dart';
import 'package:bookly_app/feature/home/presentation/manager/check_internet_cubit/check_internet_cubit.dart';
import 'package:bookly_app/feature/home/presentation/manager/newest_book_cubit/newest_book_cubit.dart';
import 'package:bookly_app/feature/splash/presentation/views/splash_view.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  await CacheHelper.init();
  dynamic isLight = CacheHelper.getSaveData(key: 'mode');
  runApp(
    MyApp(
      isLight: isLight,
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.isLight});

  final dynamic isLight;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              ChangeThemCubit()..changeMode(fromShared: isLight),
        ),
        BlocProvider(
          create: (context) =>
              NewestBookCubit(HomeRepoImp(ApiService(Dio())))..getNewestBooks(),
        ),
        BlocProvider(
          create: (context) => CheckInternetCubit()..checkConnection(),
        ),
      ],
      child: BlocBuilder<ChangeThemCubit, ChangeThemState>(
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData.light(useMaterial3: true),
            darkTheme: ThemeData.dark(useMaterial3: true),
            themeMode: ChangeThemCubit.get(context).isLight == true
                ? ThemeMode.dark
                : ThemeMode.light,
            home: const SplashView(),
          );
        },
      ),
    );
  }
}
