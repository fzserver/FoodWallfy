// import 'dart:io';
import 'dart:async';
// import 'package:foodwallfy/constants/frazile.dart';
// import 'package:foodwallfy/db/create.dart';
// import 'package:path/path.dart';
// import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DBProvider {
  // Creates a singleton
  DBProvider._();

  static final DBProvider instance = DBProvider._();
  Database _database;

  Future<Database> get database async {
    if (_database != null) {
      return _database;
    }

    _database = await initDb();
    return _database;
  }

  initDb() async {
    // Get the location of our app directory. This is where files for our app,
    // and only our app, are stored. Files in this directory are deleted
    // when the app is deleted.
    // Directory documentsDir = await getApplicationDocumentsDirectory();
    // String path = join(documentsDir.path, 'fzgradients.db');

    // return await openDatabase(
    //   path,
    //   version: Frazile.dbversion,
    //   onOpen: (db) async {},
    //   onCreate: (Database db, int version) async {
    //     await db.execute(CreateTable.gradients);
    //   },
    // );
  }
}
