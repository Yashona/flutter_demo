import 'package:flutter/material.dart';

class CustomClipperDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          ClipPath(
            clipper: BottomClipper(),
            child: Container(
              color: Colors.orange,
              height: 350.0,
            ),
          )
        ],
      ),
    );
  }
}

class BottomClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size){
    var path = Path();
    path.lineTo(0, 0);
    path.lineTo(0, size.height-150);
    var firstControlPoint = Offset(size.width/2,size.height);
    var firstEndPoint = Offset(size.width,size.height-150);
    path.quadraticBezierTo(
      firstControlPoint.dx, 
      firstControlPoint.dy, 
      firstEndPoint.dx, 
      firstEndPoint.dy
    );
    path.lineTo(size.width, size.height-150);
    path.lineTo(size.width, 0);

    return path;
  }

  @override 
  bool shouldReclip(CustomClipper<Path> oldClipper){
    return false;
  }
}