// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i3;
import 'package:nasa_app/main.dart' as _i1;

/// generated route for
/// [_i1.CardsListScreen]
class CardsListRoute extends _i2.PageRouteInfo<CardsListRouteArgs> {
  CardsListRoute({
    _i3.Key? key,
    required String title,
    required String description,
    List<_i2.PageRouteInfo>? children,
  }) : super(
         CardsListRoute.name,
         args: CardsListRouteArgs(
           key: key,
           title: title,
           description: description,
         ),
         initialChildren: children,
       );

  static const String name = 'CardsListRoute';

  static _i2.PageInfo page = _i2.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CardsListRouteArgs>();
      return _i1.CardsListScreen(
        key: args.key,
        title: args.title,
        description: args.description,
      );
    },
  );
}

class CardsListRouteArgs {
  const CardsListRouteArgs({
    this.key,
    required this.title,
    required this.description,
  });

  final _i3.Key? key;

  final String title;

  final String description;

  @override
  String toString() {
    return 'CardsListRouteArgs{key: $key, title: $title, description: $description}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! CardsListRouteArgs) return false;
    return key == other.key &&
        title == other.title &&
        description == other.description;
  }

  @override
  int get hashCode => key.hashCode ^ title.hashCode ^ description.hashCode;
}

/// generated route for
/// [_i1.HomeScreen]
class HomeRoute extends _i2.PageRouteInfo<void> {
  const HomeRoute({List<_i2.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i2.PageInfo page = _i2.PageInfo(
    name,
    builder: (data) {
      return const _i1.HomeScreen();
    },
  );
}

/// generated route for
/// [_i1.MainScreen]
class MainRoute extends _i2.PageRouteInfo<MainRouteArgs> {
  MainRoute({
    _i3.Key? key,
    required _i3.ThemeData theme,
    List<_i2.PageRouteInfo>? children,
  }) : super(
         MainRoute.name,
         args: MainRouteArgs(key: key, theme: theme),
         initialChildren: children,
       );

  static const String name = 'MainRoute';

  static _i2.PageInfo page = _i2.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<MainRouteArgs>();
      return _i1.MainScreen(key: args.key, theme: args.theme);
    },
  );
}

class MainRouteArgs {
  const MainRouteArgs({this.key, required this.theme});

  final _i3.Key? key;

  final _i3.ThemeData theme;

  @override
  String toString() {
    return 'MainRouteArgs{key: $key, theme: $theme}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! MainRouteArgs) return false;
    return key == other.key && theme == other.theme;
  }

  @override
  int get hashCode => key.hashCode ^ theme.hashCode;
}
