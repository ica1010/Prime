import 'package:flutter/material.dart';

import 'core/Loading/LoadingPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        scaffoldBackgroundColor: const Color.fromARGB(31, 28, 31, 52),
        useMaterial3: true,
      ),
      home: const Loading()
    );
  }
}
