import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rakib004/ans.dart';
import 'package:rakib004/home.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(Mycode());
}

class Mycode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     home: Home(),
    
   );
  }
}