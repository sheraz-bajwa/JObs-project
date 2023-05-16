import 'package:flutter/material.dart';

class CustomDropDownWidget extends StatefulWidget {
  const CustomDropDownWidget({Key? key}) : super(key: key);

  @override
  State<CustomDropDownWidget> createState() => _CustomDropDownWidgetState();
}

class _CustomDropDownWidgetState extends State<CustomDropDownWidget> {
  bool isExpanded = false;
  String selectedValue = 'Platform';

  //list that will be expanded
  List<String> politicsList = [
    'PS5',
    'PS4',
    'Nintendo',
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
                                          color: Colors.white,
                                          spreadRadius: -3)
                                    ],
                                  ),
                                  child: CircleAvatar(
                                    backgroundColor: Colors.transparent,
                                    //radius: 30.0,
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(selectedValue,
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400)),
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
