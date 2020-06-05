import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:foodwallfy/services/connectionStatus.dart';
import 'package:foodwallfy/services/responses.dart';
import 'package:http/http.dart' as http;
import '../constants/frazile.dart';

class FoodWalls with ChangeNotifier {
  FoodWalls();

  String _jsonResonse = "";
  bool _isFetching = false;
  ConnectionStatus _connection = ConnectionStatus.getInstance();

  bool get isFetching =>
      _isFetching; // It is checking whether data is fetched from the server or not yet.

  Future<void> fetchData({int page}) async {
    _isFetching = true;
    notifyListeners();
    await _connection.checkConnection();
    print('Con => '+_connection.hasConnection.toString());
    if (true) {

    var response = await http.get(Frazile.baseURL +
        '?client_id=' +
        Frazile.clientId +
        '&query=' +
        Frazile.query +
        '&per_page=' +
        Frazile.perPage.toString() +
        '&orientation=' +
        Frazile.orientation +
        '&page=' +
        page.toString() +
        '');

    if (response.statusCode == 200) {
      _jsonResonse = response.body;
    }
    } else {
      _jsonResonse = 'No';
    }

    _isFetching = false;
    notifyListeners();
  }

  String get getResponseText =>
      _jsonResonse; // Storing the API response from jsonResponse to a getResponseText

  List<FoodResult> getResponseJson() {
    List<FoodResult> wallsData = List<FoodResult>();
    if (_jsonResonse.isNotEmpty) {
      Map<String, dynamic> json = jsonDecode(_jsonResonse);
      Food.fromJson(json).results.forEach((foodWall) {
        wallsData.add(foodWall);
      });
      return wallsData;
    }
    return null;
  }
}
