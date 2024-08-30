import 'package:test/router.dart';

final tabIssueRoutes = <AutoRoute>[
  AutoRoute(
    path: '/',
    page: TabIssueHomeRoute.page,
  ),
  AutoRoute(
    path: '/tabs',
    page: TabIssueTabRoute.page,
    children: [
      AutoRoute(
        initial: true,
        path: 'tab-1',
        page: TabIssueTab1Route.page,
      ),
      AutoRoute(
        path: 'tab-2',
        page: TabIssueTab2Route.page,
      ),
    ],
  ),
];
