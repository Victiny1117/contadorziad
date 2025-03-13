import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: appCont(),
    );
  }
} 

class appCont extends StatefulWidget {
  @override
  _appContState createState() => _appContState();
}     

class _appContState extends State<appCont> {
  double cont = 0;

  void inc() {
    setState(() {
      cont++;
    });
  }
  void sub() {
    setState(() {
      if (cont > 0) {
        cont--;
      }
      if (cont < 0) {
        cont = 0;
      }
    });
  }
  void doub() {
    setState(() {
      cont = cont * 2;
    });
  }
  void half() {
    setState(() {
      if (cont > 0) {
        cont = cont / 2;
      }
    });
  }
 
 @override
 Widget build(BuildContext context) {
      return Scaffold(
       backgroundColor: Color.fromARGB(255, 29, 29, 29), 
        body: Stack(
          children: [
            Center ( 
              child: 
                Text(
                  cont.toStringAsFixed(2), 
                  style: TextStyle(
                  color: Color.fromARGB(255, 221, 221, 221),
                  fontSize: 24.0,
          )
        ),
            ),
        Positioned(
          top: 270, left: 70,
          child: 
            FloatingActionButton(
              onPressed: () => inc(),
              backgroundColor: const Color.fromARGB(255, 221, 221, 221),
              foregroundColor: const Color.fromARGB(255, 19, 19, 19),
              child:
              Icon(Icons.plus_one)
              ),
        ),
        Positioned(
          bottom: 270, left: 70,
          child: 
          FloatingActionButton(
           onPressed: () => sub(), 
           backgroundColor: const Color.fromARGB(255, 221, 221, 221),
           foregroundColor: const Color.fromARGB(255, 19, 19, 19),
           child: 
           Icon(Icons.minimize)
           )
        ),
        Positioned(
          bottom: 270, right: 70,
          child: 
          FloatingActionButton(
            onPressed: () => half(),
            backgroundColor: const Color.fromARGB(255, 221, 221, 221),
            foregroundColor: const Color.fromARGB(255, 19, 19, 19),
            child: 
            Icon(Icons.percent)
          )
        ),
        Positioned (
          top: 270, right: 70,
          child:
          FloatingActionButton(
            onPressed: () => doub(),
            backgroundColor: const Color.fromARGB(255, 221, 221, 221),
            foregroundColor: const Color.fromARGB(255, 19, 19, 19),
            child:
            Icon(Icons.close)
          )
        )
          ]
      ),
    );
  }
}
