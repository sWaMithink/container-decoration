import 'package:flutter/material.dart';
main (){
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData (
        primarySwatch: Colors.blue,
      ),
      home: DashBoardScreen(),
    );
  }
}

class DashBoardScreen extends StatelessWidget{
  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("container decoration"),
      ),
      body:Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.blue.shade50,
        child: Center(
          child: Container(
            width: 150,
            height: 150,

            decoration: BoxDecoration(
              color: Colors.red,
            //  borderRadius: BorderRadius.only(topLeft: Radius.circular(75)),
              border: Border.all(width: 5,color: Colors.black),
              boxShadow:[ BoxShadow(
                blurRadius: 51,
                color: Colors.yellow,
                spreadRadius: 2,

              )],
              shape: BoxShape.circle,
            ),

          ),
        ),
      )
    );
  }

}
