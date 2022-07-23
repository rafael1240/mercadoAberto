import 'package:flutter/material.dart';

class CardAssinatura extends StatelessWidget {
  const CardAssinatura({ Key? key, required this.titulo }) : super(key: key);

  final String titulo;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [Color(0xffaa0f91), Color(0xff171955)]),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.4),
            spreadRadius: 0.5,
            blurRadius: 2,
            offset: const Offset(0, 1.5),
          )
        ],
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(            
            titulo,
            style: TextStyle(color: Colors.white),
          ),
          const Icon(
            Icons.chevron_right,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}