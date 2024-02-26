import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      home: ScrollTask(),
    );
  }
}

class ScrollTask extends StatelessWidget {
  const ScrollTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        title: Title(
          color: Colors.red,
          child: Text(
            "Expanded Task",
            style: TextStyle(
              color: Colors.amberAccent,
              fontSize: 23,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Colors.amberAccent,
              size: 33,
            )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.sensor_occupied_outlined,
                size: 27,
                color: Colors.amberAccent,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.dark_mode_rounded,
                  size: 27, color: Colors.amberAccent)),
        ],
      ),
      
      body: Container(
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                child: Text("Doaa",style: TextStyle(fontSize: 20),),
                alignment: Alignment.center,
                color: Colors.green[200],
                width: 100,
                height: 100,
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                child: Text("Doaa",style: TextStyle(fontSize: 20,color: Colors.white),),
                alignment: Alignment.center,
                color: Colors.blue[400],
                width: 100,
                height: 100,
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                child: Text("Doaa",style: TextStyle(fontSize: 20,color: Colors.white),),
                alignment: Alignment.center,
                color: Colors.red[400],
                width: 100,
                height: 100,
              ),
            ),
          ],
          ),
        color: Colors.blueGrey,
        height: 300,
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.share_sharp, color: Colors.white),
        backgroundColor: Colors.amberAccent,
      ),
    );
  }
}
