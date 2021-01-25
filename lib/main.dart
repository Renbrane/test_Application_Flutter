import 'package:flutter/material.dart';
import 'dart:math';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          body: View(),
        )
    );
  }
}

class View extends StatefulWidget {

  ViewState createState() => ViewState();

}

class ViewState extends State{

  // Default Background Color.
  Color colorCode = Colors.lightBlue;

  final Random random = Random();

  generateRandomColor(){

    Color tmpColor = Color.fromARGB(
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
    ) ;

    setState(() {

      colorCode = tmpColor ;

    });

  }


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        generateRandomColor();
      },
      child: MaterialApp(
          home: Scaffold(
            backgroundColor: colorCode,
            appBar: AppBar(title: Text('The Test App')),
            body: Center(
                child: Text(
                    'Hey there!',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.0,

                    )
                )),
          )
      )
    );
  }
}
