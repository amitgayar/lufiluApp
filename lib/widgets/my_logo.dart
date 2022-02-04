import 'package:flutter/material.dart';

class MyLogo extends StatefulWidget {
  const MyLogo({Key? key}) : super(key: key);

  @override
  _MyLogoState createState() => _MyLogoState();
}

class _MyLogoState extends State<MyLogo> {

  double val = 3.0;
  double _height = 100.0;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(seconds: 4),
      padding: EdgeInsets.all(val),
      child: InkWell(
        onTap:  (){
          setState(() {
            val = val == 3?20:3;
            _height = 200;
          });
        },
        child: Text("LUFILU",style: TextStyle(
          fontWeight: FontWeight.w900, fontSize: 36,color: Colors.green[700]!,
          shadows:  const [
            Shadow(color: Colors.black45,
                blurRadius: 2.0,
              offset: Offset(3,1)
            )
          ]
        ),),
      ),
      height: _height,
      width: 130,
    );
  }
}
