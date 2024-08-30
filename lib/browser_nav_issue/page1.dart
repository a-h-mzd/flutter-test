import 'package:flutter/material.dart';
import 'package:test/router.dart';

@RoutePage()
class BrowserNavIssue1Screen extends StatefulWidget {
  const BrowserNavIssue1Screen({super.key});

  @override
  State<BrowserNavIssue1Screen> createState() => _BrowserNavIssue1ScreenState();
}

class _BrowserNavIssue1ScreenState extends State<BrowserNavIssue1Screen> {
  @override
  void initState() {
    super.initState();

    debugPrint('initState: First Screen');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IconButton(
          onPressed: () =>
              context.router.navigate(const BrowserNavIssue2Route()),
          icon: const Icon(Icons.arrow_forward_ios_rounded),
        ),
      ),
    );
  }
}
