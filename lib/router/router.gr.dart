// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;
import 'package:nasa_app/features/home/screens/home_screen.dart' as _i1;
import 'package:nasa_app/features/main/screens/main_screen.dart' as _i2;
import 'package:nasa_app/features/planets/screens/planets_screen.dart' as _i3;
import 'package:nasa_app/features/settings/screens/settings_screen.dart' as _i4;

/// generated route for
/// [_i1.HomeScreen]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute({List<_i5.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i1.HomeScreen();
    },
  );
}

/// generated route for
/// [_i2.MainScreen]
class MainRoute extends _i5.PageRouteInfo<void> {
  const MainRoute({List<_i5.PageRouteInfo>? children})
    : super(MainRoute.name, initialChildren: children);

  static const String name = 'MainRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i2.MainScreen();
    },
  );
}

/// generated route for
/// [_i3.PlanetsScreen]
class PlanetsRoute extends _i5.PageRouteInfo<void> {
  const PlanetsRoute({List<_i5.PageRouteInfo>? children})
    : super(PlanetsRoute.name, initialChildren: children);

  static const String name = 'PlanetsRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i3.PlanetsScreen();
    },
  );
}

/// generated route for
/// [_i4.SettingsScreen]
class SettingsRoute extends _i5.PageRouteInfo<SettingsRouteArgs> {
  SettingsRoute({
    _i6.Key? key,
    required String title,
    required String description,
    List<_i5.PageRouteInfo>? children,
  }) : super(
         SettingsRoute.name,
         args: SettingsRouteArgs(
           key: key,
           title: title,
           description: description,
         ),
         initialChildren: children,
       );

  static const String name = 'SettingsRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SettingsRouteArgs>();
      return _i4.SettingsScreen(
        key: args.key,
        title: args.title,
        description: args.description,
      );
    },
  );
}

class SettingsRouteArgs {
  const SettingsRouteArgs({
    this.key,
    required this.title,
    required this.description,
  });

  final _i6.Key? key;

  final String title;

  final String description;

  @override
  String toString() {
    return 'SettingsRouteArgs{key: $key, title: $title, description: $description}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! SettingsRouteArgs) return false;
    return key == other.key &&
        title == other.title &&
        description == other.description;
  }

  @override
  int get hashCode => key.hashCode ^ title.hashCode ^ description.hashCode;
}
