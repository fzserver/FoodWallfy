// import 'package:foodwallfy/constants/frazile.dart';
import 'package:foodwallfy/db/DBProvider.dart';
// import 'package:foodwallfy/services/responses.dart';
import 'package:sqflite/sqflite.dart';

class DBManager {
  static final DBManager _instance = DBManager.internal();
  factory DBManager() => _instance;
  static Database db;

  DBManager.internal();

  initDb() async {
    DBProvider dbProvider = DBProvider.instance;
    db = await dbProvider.database;
  }

  // Future<int> saveGradients(GradientData gradients) async {
  //   print(gradients.toJson().toString());
  //   int result = await db.insert(Frazile.gradientTB, gradients.toJson());
  //   return result;
  // }
}
