// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'card.dart';
import 'package:progress_indicators/progress_indicators.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Muzic Player UI",
      home: Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Cardd(
                      height: 60.0,
                      width: 60.0,
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                      padd: 12.0,
                    ),
                    Text("P L A Y L I S T"),
                    Cardd(
                      height: 60.0,
                      width: 60.0,
                      child: Icon(
                        Icons.menu,
                        color: Colors.black,
                      ),
                      padd: 12.0,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 3,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Cardd(
                  height: 350.0,
                  width: double.infinity,
                  padd: 13.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: AssetImage("image/OIP.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Koka The Friend",
                        style: TextStyle(
                            color: Colors.grey[600],
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Birdie",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                          Text(
                            "❤️",
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("0:00"),
                    Icon(Icons.shuffle),
                    Icon(Icons.repeat),
                    Text("4:22")
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Cardd(
                  height: 30.0,
                  width: double.infinity,
                  padd: 8.0,
                  child: Container(
                    height: 20,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:23.0),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Cardd(height: 80.0, width: 80.0,child: Icon(Icons.skip_previous,
                    size: 40,),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Cardd(height:80.0, width: 130.0,child: Icon(Icons.play_arrow,
                    size: 40,),),
                    
                     SizedBox(
                      width: 25,
                    ),
                    Cardd(height: 80.0, width: 80.0,
                    child: Icon(Icons.skip_next,
                    size: 40,),)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
