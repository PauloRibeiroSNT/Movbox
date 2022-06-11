import 'package:flutter/material.dart';
import 'package:slide_digital_clock/slide_digital_clock.dart';
import 'dart:async';

import 'cronos.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        //title: 'STOPWATCH',
        home: tela_2() // Edited
        );
  }
}

class tela_2 extends StatefulWidget {
  const tela_2({Key? key}) : super(key: key);

  @override
  State<tela_2> createState() => _tela_2State();
}

class _tela_2State extends State<tela_2> {
  TextEditingController roundController = TextEditingController();
  TextEditingController descancoController = TextEditingController();
  TextEditingController quantidadeController = TextEditingController();

  void dados(){
    setState(() {
      int round, descanco, quantidade;
      round = int.parse(roundController.text);
      descanco = int.parse(descancoController.text);
      quantidade = int.parse(quantidadeController.text);
    });
    }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(10.0, 50.0, 50.0, 50.0),
              child: Text(
                "Inicio",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 32.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 50.0),
              child: Text(
                "Configure seu Treino",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Tempo de cada Round",
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                controller: roundController,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Descanço",
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    )),
                //textAlign: TextAlign.center,
                //style: TextStyle(color: Colors.black, fontSize: 24.0),
                controller: descancoController,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 30.0),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Quantidade de  round",
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    )),
                //textAlign: TextAlign.center,
                //style: TextStyle(color: Colors.black, fontSize: 24.0),
                controller: quantidadeController,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 30.0),
              child: Container(
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.green,
                    //fixedSize: Size(100, 100),
                    padding: EdgeInsets.fromLTRB(100.0, 30.0, 100.0, 30.0),
                    primary: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Cronometro()),
                    );
                  },
                  child: Text(
                    "Treinar",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                    ),
                  ),

                  //color: Colors.red,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
