import 'package:bilitv/data_state/home_provider.dart';
import 'package:bilitv/module/video_cell.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (_) {
      return HomeNotifier();
    }, child: Consumer<HomeNotifier>(builder: (_, homeValue, __) {
      homeValue.getRegion();
      if ((homeValue.home?.recommendVideos != null) &&
          (homeValue.home?.recommendVideos?.length)! > 0) {
        return Column(
          children: (homeValue.home?.recommendVideos)!
              .map((entity) => VideoCell(entity))
              .toList(),
        );
      } else {
        return const SizedBox();
      }
    }));
  }
}
