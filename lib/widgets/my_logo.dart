import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lufilu/app_constants/app_constants.dart';
import 'package:lufilu/utils/util_functions.dart';

class MyLogo extends StatefulWidget {
  const MyLogo({Key? key}) : super(key: key);

  @override
  _MyLogoState createState() => _MyLogoState();
}

class _MyLogoState extends State<MyLogo> {


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
        alignment: Alignment.center,
        height: 30,
        width: 5,
        decoration:  BoxDecoration(
            color: ytBlackRed,
            borderRadius: const BorderRadius.all(Radius.circular(4))
        ),
        padding: const EdgeInsets.all(2),
        child: const Icon(CupertinoIcons.tornado, color: Colors.white)),

    const Text("   LUFILU",style: TextStyle(
    fontWeight: FontWeight.w900, fontSize: 24, color:Colors.white
    ))
      ],
    );
  }
}
