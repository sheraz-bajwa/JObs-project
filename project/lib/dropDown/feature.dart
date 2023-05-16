import 'package:flutter/material.dart';
import 'package:icony/icony_ikonate.dart';

class CustomDropDownWidget1 extends StatefulWidget {
  const CustomDropDownWidget1({Key? key}) : super(key: key);

  @override
  State<CustomDropDownWidget1> createState() => _CustomDropDownWidget1State();
}

class _CustomDropDownWidget1State extends State<CustomDropDownWidget1> {
  bool isExpanded = false;
  String selectedValue = 'Feature';

  //list that will be expanded
  List<String> politicsList = [
    'Single player',
    'Multiplayer',
    'Co-op',
    'CrosPlayer',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        //color: Colors.transparent,
        color: Color.fromARGB(255, 17, 24, 43),
        borderRadius: BorderRadius.only(
          topLeft: const Radius.circular(20),
          topRight: const Radius.circular(20),
          bottomLeft: Radius.circular(isExpanded ? 20 : 20),
          bottomRight: Radius.circular(isExpanded ? 20 : 20),
        ),
        boxShadow: [
          BoxShadow(color: Colors.white, offset: Offset(1, 0)),
        ],
        //borderRadius: BorderRadius.circular(20)
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 80,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: InkWell(
                        onTap: () {
                          FocusScope.of(context).unfocus();
                          isExpanded = !isExpanded;
                          setState(() {});
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                                child: Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    //color: Colors.white,
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 15,
                                          color: Color.fromARGB(
                                              255, 167, 168, 100),
                                          spreadRadius: -3)
                                    ],
                                  ),
                                  child: CircleAvatar(
                                    backgroundColor: Colors.transparent,
                                    child: Ikonate(
                                      Ikonate.language,
                                      color: Colors.amber,
                                      height: 33,
                                    ),
                                    //radius: 30.0,
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(selectedValue,
                                    style: TextStyle(
                                        fontSize: 23,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: .5)),
                              ],
                            )),
                            Icon(
                              isExpanded
                                  ? Icons.keyboard_arrow_up
                                  : Icons.keyboard_arrow_down,
                              color: isExpanded ? Colors.red : Colors.blue,
                            )
                          ],
                        )),
                  ),
                ),
              ),
              if (isExpanded)
                ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: politicsList
                      .map((e) => InkWell(
                            onTap: () {
                              isExpanded = false;
                              selectedValue = e;
                              setState(() {});
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 1,
                                  decoration: const BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment(0.8, 1),
                                      colors: <Color>[
                                        Color.fromARGB(255, 255, 255, 255),
                                        Color.fromARGB(255, 17, 24, 43),
                                      ],
                                      tileMode: TileMode.mirror,
                                    ),
                                  ),
                                ),
                                Container(
                                    height: 40,
                                    width: double.infinity,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(e.toString(),
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400)),
                                    )),
                              ],
                            ),
                          ))
                      .toList(),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
