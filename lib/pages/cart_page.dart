import 'package:lufilu/utils/util_functions.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
