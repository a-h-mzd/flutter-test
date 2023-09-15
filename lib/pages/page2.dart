import 'package:flutter/material.dart';
import 'package:test/router.dart';

@RoutePage()
class TabScreen extends StatelessWidget {
  const TabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AutoTabsRouter.tabBar(
        routes: const [
          Tab1Route(),
          Tab2Route(),
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
class Tab1Screen extends StatelessWidget {
  const Tab1Screen({super.key});

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
class Tab2Screen extends StatelessWidget {
  const Tab2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('tab 2'),
      ),
    );
  }
}
