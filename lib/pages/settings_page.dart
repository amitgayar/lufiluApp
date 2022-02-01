import 'package:lufilu/utils/util_functions.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 2000,
      child: const Text("Settings"),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                stops: const [0.1, 0.5, 0.7, 0.9],
                colors: [Colors.brown[100]!, Colors.white24, Colors.brown[100]!, Colors.white24]
            )
        ),

    );
  }
}
