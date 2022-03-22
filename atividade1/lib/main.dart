// ignore_for_file: prefer_equal_for_default_values
// ignore_for_file: prefer_const_constructors

//import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Atividade 1',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const MyHomePage(title: 'Vilsão Cakes'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: ListView(
        padding: EdgeInsets.all(8),
        children: <Widget>[
          GestureDetector(
            onTap: () => {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Detalhes'),
                      content: Text(
                          ' Sabor: Cenoura \n Cobertura: Chocolate\n Preço: R\$10,00'),
                      actions: [
                        TextButton(
                          child: Text('Fechar'),
                          onPressed: () => Navigator.pop(context),
                        )
                      ],
                    );
                  })
            },
            child: Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image.asset('assets/imagens/imagem1.jpeg',
                    fit: BoxFit.fill),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
          ),
          GestureDetector(
            onTap: () => {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Detalhes'),
                      content: Text(
                          ' Sabor: Limão \n Cobertura: Limão\n Preço: R\$25,00'),
                      actions: [
                        TextButton(
                          child: Text('Fechar'),
                          onPressed: () => Navigator.pop(context),
                        )
                      ],
                    );
                  })
            },
            child: Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child:
                    Image.asset('assets/imagens/imagem2.jpg', fit: BoxFit.fill),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
          ),
          GestureDetector(
            onTap: () => {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Detalhes'),
                      content: Text(
                          ' Sabor: Chocolate \n Cobertura: Chocolate\n Preço: R\$30,00'),
                      actions: [
                        TextButton(
                          child: Text('Fechar'),
                          onPressed: () => Navigator.pop(context),
                        )
                      ],
                    );
                  })
            },
            child: Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child:
                    Image.asset('assets/imagens/imagem3.jpg', fit: BoxFit.fill),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
          ),
          GestureDetector(
            onTap: () => {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Detalhes'),
                      content: Text(
                          ' Sabor: Morango \n Cobertura: Morango\n Preço: R\$30,00'),
                      actions: [
                        TextButton(
                          child: Text('Fechar'),
                          onPressed: () => Navigator.pop(context),
                        )
                      ],
                    );
                  })
            },
            child: Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child:
                    Image.asset('assets/imagens/imagem4.jpg', fit: BoxFit.fill),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
          ),
        ],
      )),
    );
  }
}
