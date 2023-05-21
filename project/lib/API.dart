import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:project/services/Gener.dart';
import 'package:project/services/methood.dart';

class Gener extends StatefulWidget {
  const Gener({super.key});

  @override
  State<Gener> createState() => _GenerState();
}

class _GenerState extends State<Gener> {
  @override
  Widget build(BuildContext context) {
    StateServices stateservices = StateServices();

    return Scaffold(
      body: Center(
          child: FutureBuilder<List<dynamic>>(
        future: stateservices.fetchGenres5(),
        builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
          if
              // (snapshot.connectionState == ConnectionState.waiting) {
              //   return CircularProgressIndicator();
              // } else if
              (snapshot.hasError) {
            // Handle the error condition
            return Text('Error fetching genres: ${snapshot.error}');
          } else if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(snapshot.data![index]['data']),
                  // Add additional widgets to display more information
                );
              },
            );
          } else {
            return Text('No data available');
          }
        },
      )),
    );
  }
}
