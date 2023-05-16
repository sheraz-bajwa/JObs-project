import 'package:flutter/material.dart';
import 'package:icony/icony_gameicons.dart';
import 'package:icony/icony_ikonate.dart';
import 'package:project/bottomNavigationBar.dart';
import 'package:icony/icony.dart';
import 'package:project/screens/filter.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 7, 14, 33),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Search',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 40),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Filter()),
                          );
                        },
                        child: Text(
                          'Filter',
                          style: TextStyle(
                              color: Color.fromARGB(255, 240, 131, 58),
                              fontSize: 20),
                        ))
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  style: TextStyle(color: Colors.white),
                  //keyboardType: TextInputType.text,

                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      hintText: 'Search Your favorate Game here..',
                      hintStyle: TextStyle(color: Colors.white),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.white)),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        //borderSide: BorderSide(color: Colors.grey.shade400)
                      ),
                      fillColor: Color.fromARGB(255, 7, 14, 33),
                      filled: true),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Enter text';
                    }
                    return null;
                  },
                ),
                GameIcons(GameIcons.battery_75),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: CustomBottomNavigationBar(
                currentIndex: 1,
                onTap: (int) {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
