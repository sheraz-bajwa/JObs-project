import 'package:flutter/material.dart';
import 'package:icony/icony_ikonate.dart';

class CustomDropDownWidget2 extends StatefulWidget {
  const CustomDropDownWidget2({Key? key}) : super(key: key);

  @override
  State<CustomDropDownWidget2> createState() => _CustomDropDownWidget2State();
}

class _CustomDropDownWidget2State extends State<CustomDropDownWidget2> {
  bool isExpanded = false;
  String selectedValue = 'Generes';

  //list that will be expanded
  List<String> politicsList = [
    'Action',
    'Arcade',
    'Fighting',
    'Horror',
    'Kids & Family',
    'Party,Music & Dance',
    'Platform',
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
                                              255, 204, 203, 203),
                                          spreadRadius: -3)
                                    ],
                                  ),
                                  child: CircleAvatar(
                                    backgroundColor: Colors.transparent,

                                    child: Ikonate(
                                      Ikonate.add_to_list,
                                      color: Colors.white,
                                      height: 40,
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
