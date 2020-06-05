import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import 'fetchfoodwalls.dart';

class Providers {
  static List<SingleChildWidget> providers() => [
        ChangeNotifierProvider<FoodWalls>(
          create: (_) => FoodWalls(),
        ),
      ];
}
