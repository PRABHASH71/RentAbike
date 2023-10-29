import 'package:flutter/material.dart';
import 'package:rentabike/Pay.dart';

class CheckOut extends StatefulWidget {
  final Product;
  const CheckOut({this.Product, super.key});

  @override
  State<CheckOut> createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  bool book = false;
  int index1 = -1;
  List<String> strArr1 = [
    "Riding Jacket",
    'Riding Gloves',
    'Helmet',
    "Riding Boots",
  ];
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Row(
                  children: [
                    Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [Colors.grey, Colors.white]),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: ImageIcon(
                            AssetImage("assets/Arrow 1.png"),
                            size: 30,
                          )),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border:
                            Border.all(color: Color.fromRGBO(200, 200, 200, 1)),
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      height: 50,
                      width: width - 100,
                      child: Center(
                        child: Text(
                          "Bike Details",
                          style: TextStyle(
                              fontSize: 19, fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: height / 12,
                        width: 130,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.Product['subtitle'],
                              style: TextStyle(fontSize: 18),
                            ),
                            Text(widget.Product['title'],
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.grey)),
                        height: height / 11,
                        width: 130,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Category",
                              style: TextStyle(
                                  fontSize: height / 50, color: Colors.grey),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(widget.Product['category'],
                                style: TextStyle(
                                    fontSize: height / 50,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.grey)),
                        height: height / 11,
                        width: 130,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Displacement",
                              style: TextStyle(
                                  fontSize: height / 50, color: Colors.grey),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(widget.Product['displacement'],
                                style: TextStyle(
                                    fontSize: height / 50,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.grey)),
                        height: height / 11,
                        width: 130,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Max. Speed",
                              style: TextStyle(
                                  fontSize: height / 50, color: Colors.grey),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(widget.Product['speed'],
                                style: TextStyle(
                                    fontSize: height / 50,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Container(
                        height: height / 3,
                        width: width - 180,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 211, 211, 211),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Image.asset(
                          "assets/bike1.png",
                        ),
                      ),
                      SizedBox(height: 13),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PayPage()));
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          height: height / 11,
                          width: width - 180,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Rent",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(widget.Product["price"] + "per day",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    "Add",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
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
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    for (int i = 0; i < strArr1.length; i++)
                      Container(
                        height: 60,
                        width: double.infinity,
                        margin: EdgeInsets.symmetric(
                          vertical: 10,
                        ),
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
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
                                      color: Colors.transparent,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    height: 50,
                                    width: 50,
                                    child: Image.asset("assets/$i.png")),
                                SizedBox(
                                  width: 10,
                                ),
                                Center(
                                    child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      strArr1[i].toString(),
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text("800/per day"),
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
                                  padding: EdgeInsets.all(2),
                                  height: 20,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    color: (index1 == i && book == false)
                                        ? Colors.grey
                                        : Colors.black,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: (index1 == i && book == false)
                                      ? Center(
                                          child: Text(
                                            "1",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 11),
                                          ),
                                        )
                                      : Center(
                                          child: Text(
                                            "Add",
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
    );
  }
}
