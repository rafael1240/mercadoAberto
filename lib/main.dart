import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar: AppBar(
        elevation: 0,
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: 45),
          child: Text("Mercado Aberto",style: TextStyle(
            color: Colors.black
          ),),
        ),
        backgroundColor: Color(0xfff5d415),
        leading: Icon(Icons.menu,color: Colors.black),
        actions: [
          IconButton(
            onPressed: () {}, 
            icon: Icon(Icons.shopping_cart_outlined,color: Colors.black)
          )
        ],

        bottom: PreferredSize(
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 5, 10),
                child: Icon(Icons.pin_drop,size: 28),
              ),
              Text("Enviar para Marcello Queiroz")
            ],
          ), 
          preferredSize: Size.fromHeight(50)
        ),
      ),

      body: Container(
        height: 180,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xfff5d415),
              Color(0xffffffff)
            ]
          )
        ),
      ),
    );
  }
}
