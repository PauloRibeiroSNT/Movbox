import 'package:boxe_app/cronometro/tela_entrada.dart';
import 'package:flutter/material.dart';
import 'package:countdown_flutter_ns/countdown_flutter_ns.dart';
import 'package:slide_digital_clock/slide_digital_clock.dart';
import 'dart:async';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        home: Cronometro() // Edited
        );
  }
}

class Cronometro extends StatefulWidget {
  const Cronometro({Key? key}) : super(key: key);

  @override
  State<Cronometro> createState() => _CronometroState();
}

class _CronometroState extends State<Cronometro> {

  tela_2 teste = tela_2();




  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 60),
              child: Text("Tempo",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  )),
            ),
            Expanded(
              child: Container(
                width: 280,
                height: 280,
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(10, 10),
                          color: Colors.green,
                          blurRadius: 15),
                      BoxShadow(
                          offset: Offset(-10, -10),
                          color: Colors.white.withOpacity(0.85),
                          blurRadius: 15)
                    ]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    //Icon(Icons.timer, size: 90, color: Colors.grey.shade900),
                    CountdownFormatted(
                      duration: Duration(hours: 0, minutes: 3),
                      onFinish: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => tela_2()),
                        );
                      },
                      builder: (BuildContext ctx, String remaining) {
                        return Text(
                          remaining,
                          style: TextStyle(
                            color: Colors.green,
                          ),
                        ); // 01:00:00
                      },
                    ),
                    //Text("00:00:00",
                    //style: TextStyle(
                    //fontSize: 40,
                    //color: Colors.green
                    //)
                    //)
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  FlatButton(
                      onPressed: () {},
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(10, 10),
                                  color: Colors.black38,
                                  blurRadius: 15),
                              BoxShadow(
                                  offset: Offset(-10, -10),
                                  color: Colors.white.withOpacity(0.85),
                                  blurRadius: 15)
                            ]),
                        child: Icon(
                          Icons.stop_circle,
                          size: 60,
                          color: Colors.green,
                        ),
                      )),
                  FlatButton(
                      onPressed: () {},
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(10, 10),
                                  color: Colors.black38,
                                  blurRadius: 15),
                              BoxShadow(
                                  offset: Offset(-10, -10),
                                  color: Colors.white.withOpacity(0.85),
                                  blurRadius: 15)
                            ]),
                        child: Icon(
                          Icons.play_arrow,
                          size: 60,
                          color: Colors.green,
                        ),
                      ))
                ],
              ),
            )
          ],
        ));
  }
}
