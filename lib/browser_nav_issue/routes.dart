import 'package:test/router.dart';

final browserNavIssueRoutes = <AutoRoute>[
  AutoRoute(
    path: '/',
    page: BrowserNavIssue1Route.page,
  ),
  AutoRoute(
    path: '/2',
    page: BrowserNavIssue2Route.page,
  ),
  AutoRoute(
    path: '/2/3',
    page: BrowserNavIssue3Route.page,
  ),
];
