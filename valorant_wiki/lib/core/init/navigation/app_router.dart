import 'package:auto_route/auto_route.dart';
import 'package:valorant_wiki/app/view/agents/view/agents_view.dart';
import 'package:valorant_wiki/app/view/bottom_navbar/view/bottom_navbar_view.dart';
import 'package:valorant_wiki/app/view/home/view/home_view.dart';
import 'package:valorant_wiki/app/view/maps/view/maps_view.dart';
import 'package:valorant_wiki/app/view/weapons/view/weapons_view.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: "View,Route")
class AppRouter extends _$AppRouter {
  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: AgentsRoute.page, path: NavigationPaths.agents.path),
    //AutoRoute(page: HomeRoute.page, path: NavigationPaths.home.path),
    AutoRoute(page: MapsRoute.page, path: NavigationPaths.maps.path),
    AutoRoute(page: WeaponsRoute.page, path: NavigationPaths.weapons.path),
    AutoRoute(
        page: BottomNavigationBarRoute.page,
        path: NavigationPaths.home.path),
    // AutoRoute(page: BuddiesRoute.page, path: NavigationPaths.buddies.path),
    // AutoRoute(page: BundlesRoute.page, path: NavigationPaths.bundles.path),
    // AutoRoute(
    //     page: CeremoniesRoute.page, path: NavigationPaths.ceremonies.path),
    // AutoRoute(
    //     page: CompetitiveTiersRoute.page,
    //     path: NavigationPaths.competitiveTiers.path),
    // AutoRoute(page: ContractsRoute.page, path: NavigationPaths.contracts.path),
    // AutoRoute(
    //     page: CurrenciesRoute.page, path: NavigationPaths.currencies.path),
    // AutoRoute(page: EventsRoute.page, path: NavigationPaths.events.path),
    // AutoRoute(page: GameModesRoute.page, path: NavigationPaths.gameModes.path),
    // AutoRoute(page: GearRoute.page, path: NavigationPaths.gear.path),
    // AutoRoute(
    //     page: LevelBordersRoute.page, path: NavigationPaths.levelBorders.path),
    // AutoRoute(
    //     page: PlayerCardsRoute.page, path: NavigationPaths.playerCards.path),
    // AutoRoute(
    //     page: PlayerTitlesRoute.page, path: NavigationPaths.playerTitles.path),
    // AutoRoute(page: SeasonsRoute.page, path: NavigationPaths.seasons.path),
    // AutoRoute(page: SplashRoute.page, path: NavigationPaths.splash.path),
  ];
}

enum NavigationPaths {
  //splash("/"),
  home("/"),
  bottomNavbar("/bottomNavbar"),
  agents("/agents"),
  buddies("/buddies"),
  bundles("/bundles"),
  ceremonies("/ceremonies"),
  competitiveTiers("/competitiveTiers"),
  contracts("/contracts"),
  currencies("/currencies"),
  events("/events"),
  gameModes("/gameModes"),
  gear("/gear"),
  levelBorders("/levelBorders"),
  maps("/maps"),
  playerCards("/playerCards"),
  playerTitles("/playerTitles"),
  seasons("/seasons"),
  weapons("/weapons");

  final String path;

  const NavigationPaths(this.path);
}
