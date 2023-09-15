import 'package:auto_route/auto_route.dart';
import 'package:test/router.gr.dart';

export 'package:auto_route/auto_route.dart';
export 'package:test/router.gr.dart';

@AutoRouterConfig()
final class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes {
    return <AutoRoute>[
      AutoRoute(
        path: '/',
        page: HomeRoute.page,
      ),
      AutoRoute(
        path: '/tabs',
        page: TabRoute.page,
        children: [
          AutoRoute(
            initial: true,
            path: 'tab-1',
            page: Tab1Route.page,
          ),
          AutoRoute(
            path: 'tab-2',
            page: Tab2Route.page,
          ),
        ],
      ),
    ];
  }
}
