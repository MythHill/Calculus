import 'package:flutter/material.dart';
void main (){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}
class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var value = 0;
  var one = 0;
  var two = 0;

void add() {
  setState(() {
    value = one + two;
  });
}

void subtract() {
  setState(() {
    value = one - two;
  });
}


void multiply() {
  setState(() {
    value = one * two;
  });
}


void divide() {
  setState(() {
    value = one ~/ two;
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Calculator'),),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Calculator',
          style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),),
          Padding(
            padding: const EdgeInsets.only(right: 300, left: 300,),
            child: TextField(onChanged: (text){
              one = int.parse(text);
            },),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 300, left: 300,),
            child: TextField(onChanged: (text){
              two = int.parse(text);
            },),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                TextButton(onPressed: add, child: Text('+',
                style: TextStyle(fontSize: 50),),),
                TextButton(onPressed: subtract, child: Text('-',
                style: TextStyle(fontSize: 50),),),
                TextButton(onPressed: multiply, child: Text('x',
                style: TextStyle(fontSize: 50),),),
                TextButton(onPressed: divide, child: Text('/',
                style: TextStyle(fontSize: 50),),),
              ]
            ),
          ),
          Text(value.toString(), style: TextStyle(fontSize: 40))
        ]
        
        
      ))
        

      
    );
  }
}