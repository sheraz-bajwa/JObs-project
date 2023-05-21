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
        child: FutureBuilder(
            future: stateservices.GenereRecord(),
            builder:
                (BuildContext context, AsyncSnapshot<List<String>> snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return CircularProgressIndicator();
              } else if (snapshot.hasError) {
                // Handle the error condition
                return Text('Error fetching genres: ${snapshot.error}');
              } else {
                return Text('no Data',
                    style: TextStyle(color: Colors.black, fontSize: 30));
              }
            }),
      ),
    );
  }
}
