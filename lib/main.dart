import 'package:flutter/material.dart';
import 'package:test/router.dart';

final router = AppRouter();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Test',
      theme: ThemeData.light(),
      routerConfig: router.config(
        includePrefixMatches: true,
      ),
    );
  }
}
