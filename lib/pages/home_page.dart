import 'package:lufilu/app_constants/app_constants.dart';
import 'package:lufilu/utils/util_functions.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    log.v("building.. HomePage");
    return Container(
      constraints: const BoxConstraints.expand(),
      color: ytBlackBody,
      child:   GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        shrinkWrap: true,
        children: List.generate(20, (index) {
          return Padding(
            padding: const EdgeInsets.all(0.0),
            child: Container(
              child: FittedBox(child: Text('$index')),
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: ytBlackVideoButtonsGrey,
                borderRadius:
                const BorderRadius.all(Radius.circular(4),),
              ),
            ),
          );
        },),
      ),
    );
  }
}