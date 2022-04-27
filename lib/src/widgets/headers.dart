import 'package:flutter/material.dart';

//header normal
class HeaderCuadrado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: Color(0xff615AAB),
    );
  }
}

//header rotado
class HeaderBordesRedondeados extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: BoxDecoration(
          color: Color(0xff615AAB),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50))),
    );
  }
}

class HeaderRotado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -0.09,
      child: Container(
        height: 300,
        color: Color(0xff615AAB),
      ),
    );
  }
}

//header con un poco levantado una esquina
class HeaderDiagonal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity, //esto hace que agarra todo el espacio disponible

      child: CustomPaint(painter: _HeaderDiagonalPainter()),
    );
  }
}

class _HeaderDiagonalPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = Paint();
    //Propiedades
    lapiz.color = Color(0xff615AAB);
    lapiz.style = PaintingStyle
        .fill; //.stroke es para mostrar solo la linea y el .fill es para pintar todo el espacio
    lapiz.strokeWidth = 20;
    final path = new Path();

    //Dibujar con el Path y el lapiz
    path.moveTo(0, size.height * 0.35);
    path.lineTo(
        size.width,
        size.height *
            0.20); //esto es lo que hace que la linea se ponga hacia arriba
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    path.lineTo(0, size.height * 0.5);
    canvas.drawPath(
        path, lapiz); //esto es lo que hace que se muestre en pantalla
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

//header que esta partido por la mitad
class HeaderporlaMitad extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity, //esto hace que agarra todo el espacio disponible

      child: CustomPaint(painter: _HeaderporlaMitadPainter()),
    );
  }
}

class _HeaderporlaMitadPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = Paint();
    //Propiedades
    lapiz.color = Color(0xff615AAB);
    lapiz.style = PaintingStyle
        .fill; //.stroke es para mostrar solo la linea y el .fill es para pintar todo el espacio
    lapiz.strokeWidth = 20;
    final path = new Path();

    //Dibujar con el Path y el lapiz
    path.moveTo(0, 0);
    path.lineTo(size.width,
        size.height); //esto es lo que hace que la linea se ponga hacia arriba
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    path.lineTo(0, size.height * 0.5);
    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

//header con punta
class HeaderconPunta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity, //esto hace que agarra todo el espacio disponible

      child: CustomPaint(painter: _HeaderconPuntaPainter()),
    );
  }
}

class _HeaderconPuntaPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = Paint();
    //Propiedades
    lapiz.color = Color(0xff615AAB);
    lapiz.style = PaintingStyle
        .stroke; //.stroke es para mostrar solo la linea y el .fill es para pintar todo el espacio
    lapiz.strokeWidth = 20;
    final path = new Path();

    //Dibujar con el Path y el lapiz
    path.lineTo(0, size.height * 0.20);
    path.lineTo(size.width * 0.5,
        size.height * 0.28); //esta liena es el principio del pico
    path.lineTo(size.width, size.height * 0.20);
    path.lineTo(size.width, 0);
    canvas.drawPath(
        path, lapiz); //esto es lo que hace que se muestre en pantalla
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

//header con curva
class HeaderCurvo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity, //esto hace que agarra todo el espacio disponible

      child: CustomPaint(painter: _HeaderCurvoPainter()),
    );
  }
}

class _HeaderCurvoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = Paint();
    //Propiedades
    lapiz.color = Color(0xff615AAB);
    lapiz.style = PaintingStyle
        .stroke; //.stroke es para mostrar solo la linea y el .fill es para pintar todo el espacio
    lapiz.strokeWidth = 20;
    final path = new Path();

    //Dibujar con el Path y el lapiz
    path.lineTo(0, size.height * 0.20);
    path.quadraticBezierTo(
        size.width * 0.5, size.height * 0.30, size.width, size.height * 0.20);
    path.lineTo(size.width, 0);
    canvas.drawPath(
        path, lapiz); //esto es lo que hace que se muestre en pantalla
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

//header con ondas
class HeaderconCurvas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity, //esto hace que agarra todo el espacio disponible

      child: CustomPaint(painter: _HeaderconCurvasPainter()),
    );
  }
}

class _HeaderconCurvasPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = Paint();
    //Propiedades
    lapiz.color = Color(0xff615AAB);
    lapiz.style = PaintingStyle
        .stroke; //.stroke es para mostrar solo la linea y el .fill es para pintar todo el espacio
    lapiz.strokeWidth = 20;
    final path = new Path();

    //Dibujar con el Path y el lapiz
    path.lineTo(0, size.height * 0.20);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.30,
        size.width * 0.5, size.height * 0.25);
    path.quadraticBezierTo(
        size.width * 0.75, size.height * 0.20, size.width, size.height * 0.25);
    path.lineTo(size.width, 0);
    canvas.drawPath(
        path, lapiz); //esto es lo que hace que se muestre en pantalla
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

//header con gradiente
class HeaderconGradiente extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity, //esto hace que agarra todo el espacio disponible

      child: CustomPaint(painter: _HeaderconGradientePainter()),
    );
  }
}

class _HeaderconGradientePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Rect rect =
        Rect.fromCircle(center: Offset(150.0, 150.0), radius: 180);
    final Gradient gradiente = new LinearGradient(colors: <Color>[
      Color(0xff6D05E8),
      Color(0xffC012FF),
      Color(0xff6D05FA)
    ]);
    final lapiz = Paint()..shader = gradiente.createShader(rect);
    //Propiedades
    //lapiz.color = Colors.red;
    lapiz.style = PaintingStyle
        .fill; //.stroke es para mostrar solo la linea y el .fill es para pintar todo el espacio
    lapiz.strokeWidth = 20;
    final path = new Path();

    //Dibujar con el Path y el lapiz
    path.lineTo(0, size.height * 0.20);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.30,
        size.width * 0.5, size.height * 0.25);
    path.quadraticBezierTo(
        size.width * 0.75, size.height * 0.20, size.width, size.height * 0.25);
    path.lineTo(size.width, 0);
    canvas.drawPath(
        path, lapiz); //esto es lo que hace que se muestre en pantalla
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
