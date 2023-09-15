import 'package:flutter/material.dart';
import 'package:test/router.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FloatingActionButton(
          heroTag: #fab,
          onPressed: () => context.router.navigate(const TabRoute()),
          child: const Icon(Icons.arrow_forward_ios_rounded),
        ),
      ),
    );
  }
}
