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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Mercado Aberto'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(   
        backgroundColor: Color(0xfff5d415),
        elevation: 0,

        leading: Icon(Icons.menu),

        title: Text(widget.title),

        actions: const [
          Icon(Icons.shopping_cart_outlined),
        ],

        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Text("Enviar para Marcello Queiroz - Rua Jardim Paulista, 56"),
        ),


        
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: const FractionalOffset(0.5, 0.2),
            colors: [
              Color(0xfff5d415), // Cor amarela
              Color(0xfff5f5f5), // Cor cinza fundo
            ]
          ),
        ),
        
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
