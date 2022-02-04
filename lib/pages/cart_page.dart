import 'package:lufilu/utils/util_functions.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      child: const MyAnimated(),
      constraints: const BoxConstraints.expand(),
      decoration:   BoxDecoration(
          gradient: RadialGradient(
              colors: [Colors.brown[100]!, Colors.white24, Colors.white],
              stops: const [0.25, 0.7, 0.99],
            center: const Alignment(-1.0, -1.0),
            radius: 1,

          ),),
    );
  }
}

class MyAnimated extends StatefulWidget {
  const MyAnimated({Key? key}) : super(key: key);

  @override
  _MyAnimatedState createState() => _MyAnimatedState();
}

class _MyAnimatedState extends State<MyAnimated> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        ElevatedButton(onPressed: () {
          log.w("button back");
          Navigator.pop(context);
        },
          child: const Text('back'),),
        for(int i=0;i<3;i++)
          Positioned(
            top: i*200,
            child: Container(
              transform: Matrix4.rotationZ(1),
              height: 190,
              width: 300,
              color: Colors.orange[((i+1)*100)%900],
            ),
          )
      ],
    );
  }
}
