import 'package:bilitv/data_state/home_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) {
          return HomeNotifier();

        },
     child: Container(

    ),
    );
  }
}
