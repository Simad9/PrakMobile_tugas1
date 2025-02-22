import 'package:flutter/material.dart';
import 'package:prak_mobile_tugas1/screen/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas 1 Prak Mobile',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 89, 53, 151)),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
