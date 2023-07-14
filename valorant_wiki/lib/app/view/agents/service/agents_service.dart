import 'package:dio/dio.dart';
import 'package:valorant_wiki/app/view/agents/model/agents.dart';
import 'package:valorant_wiki/core/init/network/network_client.dart';

class AgentsService {
  final NetworkClient _networkClient;
  final String baseUrl;

  AgentsService({required this.baseUrl})
      : _networkClient = NetworkClient(Dio(), baseUrl: baseUrl);

  Future<Agents> getAgents() async {
    try {
      final response = await _networkClient.getAgents();
      return response;
    } catch (e) {
      throw Exception(e);
    }
  }
}
