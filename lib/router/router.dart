import 'package:auto_route/auto_route.dart';
import 'package:nasa_app/router/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      page: HomeRoute.page,
      path: '/',
      children: [
        AutoRoute(page: CardsListRoute.page, path: 'list'),
        AutoRoute(page: MainRoute.page, path: 'main'),
      ],
    ),
  ];
}
