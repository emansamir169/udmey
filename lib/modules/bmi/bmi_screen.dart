import 'dart:math';

import 'package:flutter/material.dart';
import 'package:udemy/modules/bmi_result/bmi_result_screen.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({Key? key}) : super(key: key);

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  bool male = true;
  double slider = 100;
  int weight = 60;
  int age = 20;

  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("BMICOUNTER")),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: male ? Colors.pink : Colors.blue,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: MaterialButton(
                        onPressed: () {
                          setState(() {
                            male = true;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.male),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text("MALE")
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: male ? Colors.blue : Colors.pink,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: MaterialButton(
                        onPressed: () {
                          setState(() {
                            male = false;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.female),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text("FEMALE")
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(5.0)),
                child: Column(
                  children: [
                    Text(
                      "height",
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          "${slider.round()}",
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 1.0,
                        ),
                        Text(
                          "cm",
                          style: TextStyle(
                              fontSize: 10.0, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Slider(
                      value: slider,
                      onChanged: (value) {
                        setState(() {
                          slider = value;
                        });
                      },
                      max: 200,
                      min: 50,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.pink,
                      ),
                      child: Column(
                        children: [
                          Text(
                            "WEIGHT",
                            style: TextStyle(fontSize: 20.0),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            "${weight}",
                            style: TextStyle(
                                fontSize: 15.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                child: CircleAvatar(
                                  radius: 20.0,
                                  child: Icon(
                                    Icons.add,
                                    size: 30.0,
                                  ),
                                  backgroundColor: Colors.blue,
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                child: CircleAvatar(
                                  radius: 20.0,
                                  child: Icon(
                                    Icons.minimize,
                                    size: 30.0,
                                  ),
                                  backgroundColor: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.pink,
                      ),
                      child: Column(
                        children: [
                          Text(
                            "AGE",
                            style: TextStyle(fontSize: 20.0),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            "${age}",
                            style: TextStyle(
                                fontSize: 15.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                child: CircleAvatar(
                                  radius: 20.0,
                                  child: Icon(
                                    Icons.add,
                                    size: 30.0,
                                  ),
                                  backgroundColor: Colors.blue,
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                child: CircleAvatar(
                                  radius: 20.0,
                                  child: Icon(
                                    Icons.minimize,
                                    size: 30.0,
                                  ),
                                  backgroundColor: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: MaterialButton(
              onPressed: () {
                double result = weight / pow(slider / 100, 2);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => BmiResultScreen(
                            male: male,
                            slider: slider,
                            age: age,
                            weight: weight,
                            result: result,
                          )),
                );
              },
              child: Text(
                "calculater",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
            ),
            color: Colors.pink,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}
