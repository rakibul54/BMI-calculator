import 'package:flutter/material.dart';
import 'package:rakib004/ans.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool checkbotton = false;
  double _value = 5;
  int height = 0;
  int weight = 20;
  int age = 15;

  void increment() {
    setState(() {
      weight++;
    });
  }

  void decrement() {
    setState(() {
      weight--;
    });
  }

  int rakib = 20;
  void rak() {
    setState(() {
      rakib++;
    });
  }

  void raki() {
    setState(() {
      rakib--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.pink,
        centerTitle: true,
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 8,
                  left: 8,
                ),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      checkbotton = true;
                    });
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height / 4,
                    width: MediaQuery.of(context).size.width / 2,
                    decoration: BoxDecoration(
                        color: checkbotton == false
                            ? Color(0xff003873)
                            : Color(0xff007487),
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    child: Column(
                      children: [
                        Icon(
                          Icons.male,
                          size: 80,
                          color: Colors.white,
                        ),
                        Text(
                          'MALE',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      checkbotton = false;
                    });
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height / 4,
                    width: 225,
                    decoration: BoxDecoration(
                        color: checkbotton == true
                            ? Color(0xff003873)
                            : Color(0xff007487),
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    child: Column(
                      children: [
                        Icon(
                          Icons.female,
                          size: 80,
                          color: Colors.white,
                        ),
                        Text(
                          'FEMALE',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: MediaQuery.of(context).size.height / 4,
              width: double.infinity,
              color: Colors.orange,
              child: Column(
                children: [
                  Text(
                    'HEIGHT',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    '${_value.toStringAsFixed(3)} CM',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Slider(
                      value: _value,
                      max: 500,
                      min: 5,
                      onChanged: (value) {
                        setState(() {
                          _value = value;
                        });
                      })
                ],
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Container(
                  height: MediaQuery.of(context).size.height / 4,
                  width: MediaQuery.of(context).size.width / 2,
                  color: Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('WEIGHT'),
                      Text(
                        weight.toString(),
                        style: TextStyle(color: Colors.white),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Colors.indigo,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0))),
                            child: IconButton(
                                onPressed: () {
                                  decrement();
                                },
                                icon: Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                )),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Colors.indigo,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0))),
                            child: IconButton(
                                onPressed: () {
                                  increment();
                                },
                                icon: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                )),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 4,
                      width: 225,
                      color: Colors.red,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('AGE'),
                          Text(
                            rakib.toString(),
                            style: TextStyle(color: Colors.white),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    color: Colors.indigo,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(20.0))),
                                child: IconButton(
                                    onPressed: () {
                                      raki();
                                    },
                                    icon: Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                    )),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    color: Colors.indigo,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(20.0))),
                                child: IconButton(
                                    onPressed: () {
                                      rak();
                                    },
                                    icon: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    )),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                ans(_value,weight)));
                  },
                  child: Text('CALCULATE')),
              height: 40,
              width: double.infinity,
            ),
          )
        ],
      ),
    );
  }
}
