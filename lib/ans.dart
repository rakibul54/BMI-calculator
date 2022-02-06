import 'package:flutter/material.dart';

class ans extends StatefulWidget {
  final height;
  final weight;
  ans(this.height,this.weight);
  @override
  State<ans> createState() => _ansState();
}

class _ansState extends State<ans> {
  double result = 0;
  double multiple = 0;

@override
  void initState() {
      multiple = widget.height * 0.01 * widget.height * 0.01;
      result = widget.weight / multiple;
    super.initState();
  }
  

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          title: Text('BMI Result'),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Your Result',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  height: MediaQuery.of(context).size.height/1.5,
                  width: double.infinity,
                  color: Color(0xff003b75),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Normal',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Text(
                   result.toStringAsFixed(2),
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      
                     160.5<result && 190.5>result? Text(
                        'you have a normal body weight,good jobs',
                        style: TextStyle(color: Colors.white),
                      ):result>640.5?Text('you have haldy body'):Text('rterger')
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
