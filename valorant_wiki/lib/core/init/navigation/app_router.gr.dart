// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AgentsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AgentsView(),
      );
    },
    BottomNavigationBarRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const BottomNavigationBarView(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeView(),
      );
    },
    MapsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MapsView(),
      );
    },
    WeaponsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const WeaponsView(),
      );
    },
  };
}

/// generated route for
/// [AgentsView]
class AgentsRoute extends PageRouteInfo<void> {
  const AgentsRoute({List<PageRouteInfo>? children})
      : super(
          AgentsRoute.name,
          initialChildren: children,
        );

  static const String name = 'AgentsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [BottomNavigationBarView]
class BottomNavigationBarRoute extends PageRouteInfo<void> {
  const BottomNavigationBarRoute({List<PageRouteInfo>? children})
      : super(
          BottomNavigationBarRoute.name,
          initialChildren: children,
        );

  static const String name = 'BottomNavigationBarRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeView]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MapsView]
class MapsRoute extends PageRouteInfo<void> {
  const MapsRoute({List<PageRouteInfo>? children})
      : super(
          MapsRoute.name,
          initialChildren: children,
        );

  static const String name = 'MapsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [WeaponsView]
class WeaponsRoute extends PageRouteInfo<void> {
  const WeaponsRoute({List<PageRouteInfo>? children})
      : super(
          WeaponsRoute.name,
          initialChildren: children,
        );

  static const String name = 'WeaponsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
