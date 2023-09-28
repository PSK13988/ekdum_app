import 'package:flutter/material.dart';
import 'package:sample/module_test.dart';

import 'core/services/routes/route_settings.dart';
import 'features/home/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ModuleTesting moduleTesting = ModuleTesting();
    return MaterialApp(
      title: 'EKAM',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //onGenerateRoute: onGenerateRoute,
      home: const HomeView(),
    );
  }
}
