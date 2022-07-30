import 'package:flutter/material.dart';

class EnviarPara extends StatefulWidget{
  const EnviarPara({Key? key , required this.texto});

  final String texto ;
  
  @override
  _enviar createState() => _enviar();
}

class _enviar extends State<EnviarPara> {
  
  String endereco =""; 
  
  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: (){
        setState(() {
          endereco = widget.texto;
        });
      },
      child: Text(
        "Enviar para ${endereco}",
      ),
    );
  }
}