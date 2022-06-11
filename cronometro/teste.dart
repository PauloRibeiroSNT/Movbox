import 'package:flutter/material.dart';
import 'package:countdown_flutter_ns/countdown_flutter_ns.dart';

class Foo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CountdownFormatted(
        duration: Duration(hours: 1),
        builder: (BuildContext ctx, String remaining) {
          return Text(remaining); // 01:00:00
        },
      ),
    );
  }
}