import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:project/services/APP_URL.dart';
import 'package:project/services/methood.dart';

class StateServices {

  // ignore: non_constant_identifier_names
  Future<List<String>> GenereRecord() async {
    var data;
    var url = Uri.parse('https://api.gamestack.com.pk/genres');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      data = jsonDecode(response.body);

      return data;
    } else {
      throw Exception('Error loding filr');
    }
  }


Future<List<dynamic>> fetchGenres5() async {
  var url = Uri.parse('https://api.gamestack.com.pk/genres');

  try {
    var response = await http.get(url);

    if (response.statusCode == 200) {
      var jsonResponse = json.decode(response.body);
      List<dynamic> genres = jsonResponse['result']['data'];
      return genres;
    } else {
      throw Exception('Request failed with status: ${response.statusCode}');
    }
  } catch (e) {
    throw Exception('Error: $e');
  }
}



}
