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
  bool _isLoading = false;
  ConnectionStatus _connection = ConnectionStatus.getInstance();

  bool get isFetching =>
      _isFetching; // It is checking whether data is fetched from the server or not yet.

  bool get isLoading =>
      _isLoading; // It is checking whether more data is fetched from the server or not yet.

  void loadmore() async {
    Frazile.page = Frazile.page + 1;
    await fetchData(page: Frazile.page);
  }

  Future<void> fetchData({int page}) async {
    page == 1 ? _isFetching = true : _isLoading = true;
    notifyListeners();
    // print(page.toString());
    await _connection.checkConnection();
    // print('Con => ' + _connection.hasConnection.toString());
    if (_connection.hasConnection) {
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

    page == 1 ? _isFetching = false : _isLoading = false;
    notifyListeners();
  }

  String get getResponseText =>
      _jsonResonse; // Storing the API response from jsonResponse to a getResponseText

  List<FoodResult> wallsData;

  List<FoodResult> getResponseJson() {
    List<FoodResult> newWalls = List<FoodResult>();
    // List<FoodResult> wallsData;
    if (_jsonResonse.isNotEmpty) {
      Map<String, dynamic> json = jsonDecode(_jsonResonse);
      newWalls = Food.fromJson(json).results;
      if (wallsData == null) {
        wallsData = newWalls;
      } else {
        // newWalls.forEach((newWall) {
        wallsData.addAll(newWalls);
        // });
      }
      return wallsData;
    }
    return null;
  }
}
