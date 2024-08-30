import 'package:flutter/material.dart';
import 'package:test/router.dart';

@RoutePage()
class TabIssueTabScreen extends StatelessWidget {
  const TabIssueTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AutoTabsRouter.tabBar(
        routes: const [
          TabIssueTab1Route(),
          TabIssueTab2Route(),
        ],
        builder: (context, child, tabController) {
          return Column(
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FloatingActionButton(
                      heroTag: #fab1,
                      onPressed: () => tabController.animateTo(0),
                      child: const Icon(Icons.arrow_back_ios_rounded),
                    ),
                    FloatingActionButton(
                      heroTag: #fab2,
                      onPressed: () => tabController.animateTo(1),
                      child: const Icon(Icons.arrow_forward_ios_rounded),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: child,
              ),
            ],
          );
        },
      ),
    );
  }
}

@RoutePage()
class TabIssueTab1Screen extends StatelessWidget {
  const TabIssueTab1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('tab 1'),
      ),
    );
  }
}

@RoutePage()
class TabIssueTab2Screen extends StatelessWidget {
  const TabIssueTab2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('tab 2'),
      ),
    );
  }
}
