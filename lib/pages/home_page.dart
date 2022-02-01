import 'package:lufilu/utils/util_functions.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: List.generate(30, (index) =>
          Center(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: (
                  Text("title - $index")
              ),
            ),
          )
      ),
    );
  }
}