import 'package:flutter/material.dart';
import 'package:project/dropdown.dart';
import 'package:project/feature.dart';
import 'package:project/home.dart';

class Filter extends StatefulWidget {
  const Filter({super.key});

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 7, 14, 33),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Home()),
                      );
                    },
                    child: Image.asset(
                      'assets/left-arrow.png',
                      height: 35,
                      width: 35,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Filters',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 40),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              CustomDropDownWidget(),
              SizedBox(
                height: 20,
              ),
              CustomDropDownWidget1(),
              SizedBox(
                height: 20,
              ),
              CustomDropDownWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
