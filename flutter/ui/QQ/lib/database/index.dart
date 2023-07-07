import "package:path/path.dart";
import "package:sqflite/sqflite.dart";

class MyDatabase {
  Database? database;
  MyDatabase() {
    if(database == null){
      initialDataBase;
    }
  }

  Future<void> get initialDataBase async {
    database = await openDatabase(
        join(await getDatabasesPath(), "daylight_database"),
        version: 1,
        onCreate: _createTable);
  }

  inser(String table, Map<String, dynamic> data) async {
    final db = await database;
    return await db!.insert(table, data, conflictAlgorithm: ConflictAlgorithm.replace);
  }

  delete(String table, String key, dynamic value) async {
    final db = await database;
    return await db!.delete(table, where: "${key}=?", whereArgs: [value]);
  }

  update(String table, Map<String, dynamic> data, String key,
      dynamic value) async {
    final db = await database;
    return await db!.update(table, data, where: "${key}=?", whereArgs: [value]);
  }

  find(String table, [String? key, dynamic value]) async {
    final db = await database;
    if (key == null) {
      return await db!.query(table);
    } else {
      return await db!.query(table, where: "${key}=?", whereArgs: [value]);
    }
  }

  void _createTable(Database db, int version) {
    db.execute("""create table communicate(
        name primary key text,
        avatar text,
        date text,
        info text
      )""");
  }
}
