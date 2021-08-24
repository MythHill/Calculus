import 'package:flutter/material.dart';

import 'package:calculator/widgets/Calcbutton.dart';

import 'package:math_expressions/math_expressions.dart';


void main (){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
  var expression = '';
  var history = '';

  void clear(text) {
    setState(() {
      expression = "";
    });
  }

  void allclear(text) {
    setState(() {
      expression="";
      history="";
    });
  }

  void numClick(text) {
    setState(() {
      expression += text;
    });
  }

  void evaluate(text){
    Parser p = Parser();
    Expression exp = p.parse(expression);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);


    setState(() {
      history = expression;
      expression = eval.toString();
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color(0xFF283637),
      appBar: AppBar(title: Text('Calculator'),
      backgroundColor: Colors.black87,),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [

          Container(padding: EdgeInsets.only(right: 50, bottom: 10),
          
          alignment: Alignment.bottomRight,
          child: Text(history, 
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),),



          Container(
           padding: EdgeInsets.only(right: 50, bottom: 10),
            alignment: Alignment.bottomRight,
            child: Text(expression,
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Colors.grey),),
          ),




          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:[


              CalcButton(text: 'AC',
              textcolour: Colors.white70,
              backcolour: Colors.blueGrey,
              Onpressed: allclear,),

               CalcButton(text: 'C',
              textcolour: Colors.white70,
              backcolour: Colors.blueGrey,
              Onpressed: clear,),

               CalcButton(text: '%',
              textcolour: Colors.white70,
              backcolour: Colors.blueGrey,
              Onpressed: numClick,),

               CalcButton(text: '/',
              textcolour: Colors.white70,
              backcolour: Colors.blueGrey,
              Onpressed: numClick,),

            ]
          ),Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:[


              CalcButton(text: '1',
              textcolour: Colors.white70,
              backcolour: Colors.blueGrey,
              Onpressed: numClick,),

               CalcButton(text: '2',
              textcolour: Colors.white70,
              backcolour: Colors.blueGrey,
              Onpressed: numClick,),

               CalcButton(text: '3',
              textcolour: Colors.white70,
              backcolour: Colors.blueGrey,
              Onpressed: numClick,),

               CalcButton(text: '*',
              textcolour: Colors.white70,
              backcolour: Colors.blueGrey,
              Onpressed: numClick,),

            ]
          ),Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:[


              CalcButton(text: '4',
              textcolour: Colors.white70,
              backcolour: Colors.blueGrey,
              Onpressed: numClick,),

               CalcButton(text: '5',
              textcolour: Colors.white70,
              backcolour: Colors.blueGrey,
              Onpressed: numClick,),

               CalcButton(text: '6',
              textcolour: Colors.white70,
              backcolour: Colors.blueGrey,
              Onpressed: numClick,),

               CalcButton(text: '+',
              textcolour: Colors.white70,
              backcolour: Colors.blueGrey,
              Onpressed: numClick,)

            ]
          ),Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:[


              CalcButton(text: '7',
              textcolour: Colors.white70,
              backcolour: Colors.blueGrey,
              Onpressed: numClick,),

               CalcButton(text: '8',
              textcolour: Colors.white70,
              backcolour: Colors.blueGrey,
              Onpressed: (){},),

               CalcButton(text: '9',
              textcolour: Colors.white70,
              backcolour: Colors.blueGrey,
              Onpressed: numClick,),

               CalcButton(text: '-',
              textcolour: Colors.white70,
              backcolour: Colors.blueGrey,
              Onpressed: numClick,),

            ]
          ),Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:[


              CalcButton(text: '.',
              textcolour: Colors.white70,
              backcolour: Colors.blueGrey,
              Onpressed: numClick,),

               CalcButton(text: '0',
              textcolour: Colors.white70,
              backcolour: Colors.blueGrey,
              Onpressed: numClick,),

               CalcButton(text: '00',
              textcolour: Colors.white70,
              backcolour: Colors.blueGrey,
              Onpressed: numClick,),

               CalcButton(text: '=',
              textcolour: Colors.white70,
              backcolour: Colors.blueGrey,
              Onpressed: evaluate,),

            ]
          ),
          
        ]
        
        
      )
        

      
    );
  }
}