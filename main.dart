import 'package:againwork/work/form.dart';
import 'package:againwork/work/logIn.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LogIn(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Journey'),
        centerTitle: true,
      ),
      body: Container(
        child: Center(child: Text('Cuto.....', style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          color: Colors.black,
          //decoration: TextDecoration.underline,
          decorationColor: Colors.red,
          decorationStyle: TextDecorationStyle.solid,

        ),),),
      ),
    );
  }
}
