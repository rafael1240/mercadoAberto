import 'package:flutter/material.dart';

class BotaoCategoria extends StatefulWidget{
  const BotaoCategoria({Key? key,required this.icone,required this.text}) : super(key: key);

  final IconData icone ;
  final String text ;
  
  @override
  _botaoCategoria createState() => _botaoCategoria();
}

class _botaoCategoria extends State<BotaoCategoria> {
  bool test = false;

  @override 
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: (){
        setState(() {
          test = !test;
        });
      },
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(18),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    spreadRadius: 1,
                    blurRadius: 4,
                  )
                ]
              ),
              child: Icon(
                widget.icone,
                size: 30,
                color: test ? Colors.blue : Colors.grey,
              ), 
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
              child: Text(
                "${widget.text}",
                style: TextStyle(
                  color: test ? Colors.blue : Colors.grey,
                ),
              ),
            )

          ],
        ),
      )
    );
  }

}