import 'package:flutter/material.dart';
import 'package:rentabike/splashscreen.dart';

class PayPage extends StatefulWidget {
  const PayPage({super.key});

  @override
  State<PayPage> createState() => _PayPageState();
}

class _PayPageState extends State<PayPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Row(
                  children: [
                    Container(
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
                      width: width - 80,
                      child: Center(
                        child: Text(
                          "Check Out",
                          style: TextStyle(
                              fontSize: 19, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: height / 5,
                width: width - 20,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 202, 202, 202),
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 7,
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            left: 30, right: 20, top: 5, bottom: 5),
                        height: height / 14,
                        width: width - 40,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(165, 255, 255, 255),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Start Date",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 160, 160, 160)),
                                  ),
                                  Text("09-06-2021",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                              ImageIcon(AssetImage("assets/2012.png")),
                            ]),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            left: 30, right: 20, top: 5, bottom: 5),
                        height: height / 14,
                        width: width - 40,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(165, 255, 255, 255),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "End Date",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 160, 160, 160)),
                                  ),
                                  Text("12-06-2021",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                              ImageIcon(AssetImage("assets/2012.png")),
                            ]),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 40,
                width: width - 40,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Apply Coupon",
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: Color.fromRGBO(200, 200, 200, 1),
                              width: 2)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: Color.fromRGBO(200, 200, 200, 1))),
                      hintStyle: TextStyle(
                        fontSize: 13,
                      )),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text("Details",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              Divider(
                color: Color.fromARGB(255, 151, 151, 151),
                thickness: 1,
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Days"),
                      SizedBox(height: 4),
                      Text("Rent"),
                      SizedBox(height: 4),
                      Text("Additional Items"),
                      SizedBox(height: 4),
                      Text("Coupon Discount"),
                      SizedBox(height: 4),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("4"),
                      SizedBox(height: 4),
                      Text("\$ 5996"),
                      SizedBox(height: 4),
                      Text("\$ 6400"),
                      SizedBox(height: 4),
                      Text("\$   396"),
                      SizedBox(height: 4),
                    ],
                  ),
                ],
              ),
              Divider(
                color: Color.fromARGB(255, 151, 151, 151),
                thickness: 1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total Amount",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "\$ 12000",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 150,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => cartsplashScreen()));
                },
                child: Container(
                  height: 50,
                  width: width - 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black,
                  ),
                  child: Center(
                    child: Text(
                      "PAY",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
