import 'package:boxe_app/cronometro/cronos.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'cronometro/tela_entrada.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(10.0, 50.0, 50.0, 50.0),
              child: Text(
                "MovBoxe",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 32.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10.0, 0.0, 300.0, 0.0),
              child: Text(
                "Instruçoes",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24.0,
                  fontWeight: FontWeight.w700,
                ),
              ),

            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10.0, 00.0, 320.0, 00.0),
              child: Text(
                "Aviso",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w700,
                ),
              ),

            ),
            Padding(padding: EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 30.0),
            child: Container(
              child: Text("*IMPORTANTE: Esse aplicativo não substitui o treinador de uma academia, mas sim auxilia o usuário a ser disciplinado durante as praticas de treino."

                  ""
                  "Na próxima tela vera as opções para configurar o seu treino, abaixo temos mais informações antes de ir para a próxima tela:"

                  "NUMERO DE GOLPES:"
                  "Se refere ao numero de golpes/ações que o usuário esteja desferindo dentro do intervalo de tempo"

                  "INTERVALO:"
                  "Se refere ao tempo desejado entre cada golpe"

                  "mais..."

              ),
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
                      MaterialPageRoute(builder: (context) => tela_2()),
                    );
                  },
                  child: Text(
                    "Entrar",
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
