import 'package:flutter/material.dart';
import 'package:test/router.dart';

@RoutePage()
class BrowserNavIssue3Screen extends StatefulWidget {
  const BrowserNavIssue3Screen({super.key});

  @override
  State<BrowserNavIssue3Screen> createState() => _BrowserNavIssue3ScreenState();
}

class _BrowserNavIssue3ScreenState extends State<BrowserNavIssue3Screen> {
  @override
  void initState() {
    super.initState();

    debugPrint('initState: Third Screen');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IconButton(
          onPressed: context.back,
          icon: const Icon(Icons.arrow_back_ios_rounded),
        ),
      ),
    );
  }
}
