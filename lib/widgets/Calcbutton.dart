import 'package:flutter/material.dart';

class CalcButton extends StatelessWidget {
  const CalcButton({ Key? key,
   required this.text,
   required this.backcolour,
   required this.textcolour,
   required this.Onpressed}) 
    : super(key: key);



final text;
final Color backcolour;
final Color textcolour;
final Function Onpressed;


  @override
  Widget build(BuildContext context) {
    return Container(

    padding: EdgeInsets.all(10),
      child: SizedBox(height: 65,
      width: 65,
        child: TextButton(onPressed: (){
          Onpressed(text);

        }, 
        child: Text (text , style: TextStyle(color: textcolour, fontSize: 30),
        ),
        style: TextButton.styleFrom(backgroundColor: backcolour, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),
        ),
      ),
    );
  }
}