import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter/config/routes.dart';
import 'package:flutter_counter/config/themes.dart';
import 'package:flutter_counter/counter_observer.dart';
import 'package:flutter_counter/features/main/presentation/pages/counter_page.dart';
import 'package:flutter_counter/injection_container.dart';

Future<void> main() async {
  Bloc.observer = const CounterObserver();
  await injectDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Timer',
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      navigatorKey: navigatorKey,
      initialRoute: CounterPage.route,
      onGenerateRoute: AppRoutes.onGenerateRoutes,
    );
  }
}
