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
      body: FutureBuilder(
          future: stateservices.GenereRecord(),
          builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
            if (snapshot.hasData) {
              return Text(
                'loading',
                style: TextStyle(color: Colors.black, fontSize: 30),
              );
            } else {
              return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [Text('data')],
                    );
                  });
            }
          }),
    );
  }
}
