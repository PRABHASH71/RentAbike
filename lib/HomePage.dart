import 'package:flutter/material.dart';
import 'package:rentabike/CheckOut.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool check = false;
  bool book = false;
  int index = -1;
  int index1 = -1;
  List<String> strArr = [
    "Adventure",
    'Cruiser',
    'Sportsbike',
    "Tourer",
  ];

  Widget convert(int key, int index, bool check) {
    String st = strArr[key];
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        (index == key && check == true)
            ? Text(
                st,
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )
            : Text(st,
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
      ],
    );
  }

  void fun(Map newmap) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => CheckOut(
                  Product: newmap,
                )));
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
          body: Container(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 32, left: 20),
                  child: Row(
                    children: [
                      Image.asset("assets/pp.png"),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Welcome",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 74, 74, 74)),
                            ),
                            Text(
                              "Prabhash Ranjan",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextField(
                    decoration: InputDecoration(
                      isDense: true,
                      prefixIcon: Icon(
                        Icons.search,
                        size: 30,
                        color: Color.fromARGB(255, 192, 192, 192),
                      ),
                      filled: true,
                      fillColor: Color.fromARGB(57, 208, 208, 208),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                              color: Color.fromARGB(0, 255, 255, 255),
                              width: 2)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                              color: Color.fromARGB(0, 255, 255, 255),
                              width: 2)),
                      hintText: '               Search Bike',
                      hintStyle: TextStyle(
                          color: Color.fromARGB(255, 192, 192, 192),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      for (int i = 0; i < strArr.length; i++)
                        InkWell(
                          onTap: () {
                            setState(() {
                              index = i;

                              check = true;
                            });
                          },
                          child: Container(
                            height: 50,
                            width: 130,
                            margin: EdgeInsets.only(right: 10),
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              color: (check == true && index == i)
                                  ? Colors.black
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Center(child: convert(i, index, check)),
                              ],
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Text(
                      "Popular",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Text(
                      " items",
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      for (int i = 0; i < Products.length; i++)
                        InkWell(
                          onTap: () {
                            fun(Products[i]);
                          },
                          child: Container(
                            height: 210,
                            width: 120,
                            margin: EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromRGBO(200, 200, 200, 1)),
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: SizedBox.fromSize(
                                    size: Size.fromRadius(height / 12.4),
                                    child: Image.asset(
                                      Products[i]["image"].toString(),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(
                                      child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        Products[i]["title"],
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: height / 57),
                                      ),
                                      Text(Products[i]["subtitle"]),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            Products[i]["price"],
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text("per day")
                                        ],
                                      )
                                    ],
                                  )),
                                ),
                              ],
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Text(
                      "Recently",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Text(
                      " viewed",
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      for (int i = 0; i < Products.length; i++)
                        Container(
                          height: 60,
                          width: double.infinity,
                          margin: EdgeInsets.symmetric(
                            vertical: 10,
                          ),
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Color.fromRGBO(200, 200, 200, 1)),
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Color.fromRGBO(
                                                200, 200, 200, 1)),
                                        color: Colors.transparent,
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      height: 50,
                                      width: 50,
                                      child: Image.asset("assets/bike.png")),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Center(
                                      child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        Products[i]["title"],
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        Products[i]["price"] + "per day",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  )),
                                ],
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    book == true;
                                    index1 = i;
                                  });
                                },
                                child: Container(
                                    height: 20,
                                    width: 60,
                                    padding: EdgeInsets.all(2),
                                    decoration: BoxDecoration(
                                      color: (index1 == i && book == false)
                                          ? Colors.grey
                                          : Colors.black,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: (index1 == i && book == false)
                                        ? Center(
                                            child: Text(
                                              "Booked",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 11),
                                            ),
                                          )
                                        : Center(
                                            child: Text(
                                              "Available",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 11),
                                            ),
                                          )),
                              )
                            ],
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }

  List<dynamic> Products = [
    {
      "title": "Meteore",
      "subtitle": "Royal Enfield",
      "price": "699/",
      "category": "Cruiser",
      "displacement": "1144 cc",
      "speed": "250 Km/h",
      "image": "assets/meteor 1.png"
    },
    {
      "title": "Scout Bobber",
      "subtitle": "Indian",
      "price": "1499/",
      "category": "Cruiser",
      "displacement": "1244 cc",
      "speed": "280 Km/h",
      "image": "assets/meteor 1.png"
    },
    {
      "title": "Rebel",
      "subtitle": "Honda 1100",
      "price": "1199/",
      "category": "Cruiser",
      "displacement": "1100 cc",
      "speed": "200 Km/h",
      "image": "assets/meteor 1.png"
    },
    {
      "title": "Classic 350",
      "category": "Cruiser",
      "displacement": "1844 cc",
      "speed": "220 Km/h",
      "subtitle": "Indian",
      "price": "1499/",
      "image": "assets/meteor 1.png"
    },
  ];
}
