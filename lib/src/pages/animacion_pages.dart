import 'package:flutter/material.dart';
import 'dart:math' as Math;

class AnimacionesPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CuadroAnimado(),
      ),
    );
  }
}

class CuadroAnimado extends StatefulWidget {
  @override
  State<CuadroAnimado> createState() => _CuadroAnimadoState();
}

class _CuadroAnimadoState extends State<CuadroAnimado>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> rotacion;
  late Animation<double> opacidad;
  late Animation<double> moverDerecha;
  late Animation<double> agrandar;
  @override
  void initState() {
    controller = new AnimationController(
        vsync: this, duration: Duration(milliseconds: 4000));
    rotacion = Tween(begin: 0.0, end: 2 * Math.pi)
        .animate(CurvedAnimation(parent: controller, curve: Curves.easeOut));
    opacidad = Tween(begin: 0.1, end: 1.0).animate(controller);
    moverDerecha = Tween(begin: 0.0, end: 200.0).animate(controller);
    agrandar = Tween(begin: 0.0, end: 2.0)
        .animate(CurvedAnimation(parent: controller, curve: Curves.easeOut));

    controller.addListener(() {
      //print('Status:  ${controller.status}');
      if (controller.status == AnimationStatus.completed) {
        controller.reset();
      }
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
    controller.forward();
    return AnimatedBuilder(
        animation: controller,
        child: _Rectangulo(),
        builder: (BuildContext context, Widget? childRectangulo) {
          return Transform.translate(
            offset: Offset(moverDerecha.value, 0),
            child: Transform.rotate(
                angle: rotacion.value,
                child: Opacity(
                    opacity: opacidad.value,
                    child: Transform.scale(
                        scale: agrandar.value, child: childRectangulo))),
          );
        });
  }
}

class _Rectangulo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(color: Colors.green),
    );
  }
}
