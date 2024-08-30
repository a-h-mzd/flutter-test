import 'package:auto_route/auto_route.dart';
import 'package:test/tab_issue/routes.dart';

export 'package:auto_route/auto_route.dart';
export 'package:test/router.gr.dart';

@AutoRouterConfig()
final class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => tabIssueRoutes;
}
