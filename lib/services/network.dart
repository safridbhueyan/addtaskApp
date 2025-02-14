import 'dart:convert';

import 'package:apiprac/view%20Model/model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiCall extends ChangeNotifier {
  var endpoint = "https://webhook.site/97effbb4-d430-4bdf-b240-9a69774d88e2";

  Model? _post;
  Model? get post => _post;
  bool _isLoading = false;
  bool get isLoading => _isLoading;

  Future<dynamic> Fetchdata() async {
    Uri url = Uri.parse(endpoint);
    _isLoading = true;
    notifyListeners();
    try {
      final response = await http.get(url);
      debugPrint("API Response: ${response.body}");
      if (response.statusCode == 200) {
        final decodeData = jsonDecode(response.body);
        _post = Model.fromJson(decodeData);
        debugPrint("\n  \n $decodeData \n\n");
      }
    } catch (e) {
      debugPrint("\n $e");
    }
    _isLoading = false;
    notifyListeners();
  }
}
