import 'package:flutter/material.dart';
import 'package:flutter_clone_mytelu/views/pages/pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        DetailPage.routeName: (context) => const DetailPage(),
      },
      debugShowCheckedModeBanner: false,
      title: 'My Telu Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const LoginPage(),
    );
  }
}
