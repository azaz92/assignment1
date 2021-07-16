import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {

  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int count=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Assignment No. 1', style: TextStyle(color: Colors.amber, ),),
        backgroundColor: Colors.blueGrey,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text('Press button below to increment or decrement',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.blueGrey),
                    onPressed: () {
                      count++;
                      setState(() {});
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 13, bottom: 13,),
                      child: Text('+', style: TextStyle(fontSize: 22),),
                    )
                ),
                  SizedBox(width: 20,),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.blueGrey),
                      onPressed: () {
                        count--;
                        setState(() {});
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 13, bottom: 13,),
                        child: Text('-', style: TextStyle(fontSize: 22),),
                      )
                  ),
                ]


            ),
            SizedBox(height: 20,),
            Text('$count', style: TextStyle(fontSize: 44, decoration: TextDecoration.underline),),
          ],
        ),
      ),
    );
  }
}

