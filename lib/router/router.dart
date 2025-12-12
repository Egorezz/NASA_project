import 'package:auto_route/auto_route.dart';
import 'package:nasa_app/router/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      page: MainRoute.page,
      path: '/',
      children: [
        AutoRoute(page: SettingsRoute.page, path: 'settings'),
        AutoRoute(page: HomeRoute.page, path: 'home'),
        AutoRoute(page: PlanetsRoute.page, path: 'planets'),
      ],
    ),
  ];
}
