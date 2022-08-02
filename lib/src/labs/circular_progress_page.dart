import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class CircularProgressPageState extends StatefulWidget {
  CircularProgressPageState({Key? key}) : super(key: key);

  @override
  State<CircularProgressPageState> createState() =>
      _CircularProgressPageStateState();
}

class _CircularProgressPageStateState extends State<CircularProgressPageState>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  double porcentaje = 0.0;
  double nuevoPorcentaje = 0.0;
  @override
  void initState() {
    controller = new AnimationController(
        vsync: this, duration: Duration(milliseconds: 800));
    controller.addListener(() {
      // print('valor controller: ${controller.value}');
      setState(() {
        porcentaje = lerpDouble(porcentaje, nuevoPorcentaje, controller.value)!;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh),
        onPressed: () {
          porcentaje = nuevoPorcentaje;
          nuevoPorcentaje += 10;
          if (nuevoPorcentaje > 100) {
            nuevoPorcentaje = 0;
            porcentaje = 0;
          }
          controller.forward();
          //envia los datos de aqui arriba
          setState(() {});
        },
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          //child: CustomPaint(painter: _MiRadialProgres(porcentaje)),
        ),
      ),
    );
  }
}
