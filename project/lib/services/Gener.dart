import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:project/services/APP_URL.dart';
import 'package:project/services/methood.dart';

class StateServices {
  Future<void> fetchGenres() async {
  var url = Uri.parse('https://api.gamestack.com.pk/genres');

  try {
    var response = await http.get(url);

    if (response.statusCode == 200) {
      // Request successful, parse the response
      var jsonResponse = json.decode(response.body);
      // Process the data as needed
      List<dynamic> genres = jsonResponse['genres'];
      print(genres);
    } else {
      // Request failed, handle the error
      print('Request failed with status: ${response.statusCode}');
    }
  } catch (e) {
    // Handle any exceptions thrown during the request
    print('Error: $e');
  }
}

  
  
  Future<List<dynamic>> GenereRecord() async {
    var data;

    final response = await http.get(Uri.parse(AppUrl.Gener));

    if (response.statusCode == 200) {
      data = jsonDecode(response.body);

      return data;
    } else {
      throw Exception('Error loding filr');
    }
  }
}
