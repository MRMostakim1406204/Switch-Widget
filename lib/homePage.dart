import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

 bool Status = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Switch Widget"),
        centerTitle: true,
      ),
      body: Center(
        child: Switch(
          inactiveThumbColor: Colors.black,
          activeColor: Colors.pink,
          value: Status, 
          onChanged: (bool value){
            setState(() {
              Status = value;
            });
          }),
      ),
    );
  }
}