import 'package:otrujja/presentation/splash/splash.dart';

import 'package:flutter/services.dart';

import 'domain/bloc_observer.dart';
import 'domain/cubit/otrujja_cubit.dart';
import 'domain/network/remote/dio_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIOverlays([]);
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  Bloc.observer = MyBlocObserver();

  DioHelper.init();

  runApp(const MyApp());
}
// https://Otrujjacenter.com/api/api-json/sections/topics/20/

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (BuildContext context) => OtrujjaCubit())
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashView(),
      ),
    );
  }
}
