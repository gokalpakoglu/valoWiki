import 'package:dio/dio.dart';
import 'package:valorant_wiki/app/view/weapons/model/weapons.dart';
import 'package:valorant_wiki/core/init/network/network_client.dart';

class WeaponsService {
  final NetworkClient _networkClient;
  final String baseUrl;

  WeaponsService({required this.baseUrl})
      : _networkClient = NetworkClient(Dio(), baseUrl: baseUrl);

  Future<Weapons> getWeapons() async {
    try {
      final response = await _networkClient.getWeapons();
      return response;
    } catch (e) {
      throw Exception(e);
    }
  }
}
