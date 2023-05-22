import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:project/services/StateServices.dart';
import 'package:project/services/methood.dart';

class platform extends StatefulWidget {
  const platform({super.key});

  @override
  State<platform> createState() => _platformState();
}

class _platformState extends State<platform> {
  @override
  Widget build(BuildContext context) {
    StateServices stateservices = StateServices();

    return Scaffold(
      body: Center(
          child: FutureBuilder<List<dynamic>>(
        future: stateservices.fetchplatform(),
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
                  leading: Image.network(
                    snapshot.data![index]['image'],
                    height: 60,
                    width: 60,
                  ),
                  title: Text(snapshot.data![index]['title']),
                  subtitle: Text(snapshot.data![index]['_id']),
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
