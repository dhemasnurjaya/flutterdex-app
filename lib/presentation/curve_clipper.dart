import 'package:flutter/widgets.dart';

class CurveClipper extends CustomClipper<Path> {
  const CurveClipper({this.curveHeight = 10});
  final double curveHeight;

  @override
  Path getClip(Size size) {
    final controlPoint = Offset(size.width / 2, size.height + curveHeight);
    final endPoint = Offset(size.width, size.height - curveHeight);

    final path = Path()
      ..lineTo(0, size.height - curveHeight)
      ..quadraticBezierTo(
        controlPoint.dx,
        controlPoint.dy,
        endPoint.dx,
        endPoint.dy,
      )
      ..lineTo(size.width, 0)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
