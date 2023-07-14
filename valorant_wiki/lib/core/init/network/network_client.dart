import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:valorant_wiki/app/view/agents/model/agents.dart';
import 'package:valorant_wiki/app/view/maps/model/maps.dart';
import 'package:valorant_wiki/app/view/weapons/model/weapons.dart';
import 'package:valorant_wiki/core/constants/app_endpoints.dart';

part 'network_client.g.dart';

@RestApi(baseUrl: AppEndpoints.baseUrl)
abstract class NetworkClient {
  factory NetworkClient(Dio dio, {String baseUrl}) = _NetworkClient;

  @GET("/agents")
  Future<Agents> getAgents();
  
  @GET("/buddies")
  Future<dynamic> getBuddies();

  @GET("bundles")
  Future<dynamic> getBundles();

  @GET("ceremonies")
  Future<dynamic> getCeremonies();

  @GET("competitivetiers")
  Future<dynamic> getCompetitiveTiers();


  @GET("contenttiers")
  Future<dynamic> getContentTiers();

  @GET("contracts")
  Future<dynamic> getContracts();

  @GET("currencies")
  Future<dynamic> getCurrencies();

  @GET("events")
  Future<dynamic> getEvents();

  @GET("gamemodes")
  Future<dynamic> getGameModes();

  @GET("gear")
  Future<dynamic> getGear();

  @GET("levelborder")
  Future<dynamic> getLevelBorder();

  @GET("/maps")
  Future<Maps> getMaps();

  @GET("playercards")
  Future<dynamic> getPlayerCards();

  @GET("playertitles")
  Future<dynamic> getPlayerTitles();

  @GET("seasons")
  Future<dynamic> getSeasons();

  @GET("sprays")
  Future<dynamic> getSprays();

  @GET("themes")
  Future<dynamic> getThemes();

  @GET("/weapons")
  Future<Weapons> getWeapons();
}
