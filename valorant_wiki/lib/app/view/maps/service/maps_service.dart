import 'package:dio/dio.dart';
import 'package:valorant_wiki/app/view/maps/model/maps.dart';
import 'package:valorant_wiki/core/init/network/network_client.dart';

class MapsService {
  final NetworkClient _networkClient;
  final String baseUrl;

  MapsService({required this.baseUrl})
      : _networkClient = NetworkClient(Dio(), baseUrl: baseUrl);

  Future<Maps> getMaps() async {
    try {
      final response = await _networkClient.getMaps();
      return response;
    } catch (e) {
      throw Exception(e);
    }
  }
}
