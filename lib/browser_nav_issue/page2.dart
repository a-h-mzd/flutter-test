import 'package:flutter/material.dart';
import 'package:test/router.dart';

@RoutePage()
class BrowserNavIssue2Screen extends StatefulWidget {
  const BrowserNavIssue2Screen({super.key});

  @override
  State<BrowserNavIssue2Screen> createState() => _BrowserNavIssue2ScreenState();
}

class _BrowserNavIssue2ScreenState extends State<BrowserNavIssue2Screen> {
  @override
  void initState() {
    super.initState();

    debugPrint('initState: Second Screen');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IconButton(
          onPressed: () =>
              context.router.navigate(const BrowserNavIssue3Route()),
          icon: const Icon(Icons.arrow_forward_ios_rounded),
        ),
      ),
    );
  }
}
