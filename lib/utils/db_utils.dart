import 'package:sqflite/sqflite.dart' as sql;
import 'package:path/path.dart' as path;
import 'package:sqflite/sql.dart';

class DbUtils {
  static Future<sql.Database> database() async {
    final dbPath = await sql.getDatabasesPath();
    return sql.openDatabase(
      path.join(dbPath, 'places.db'),
      onCreate: (sql.Database db, int version) async {
        // When creating the db, create the table
        await db.execute(
          'CREATE TABLE places (id INTEGER PRIMARY KEY, title TEXT, image TEXT)',
        );
      },
      version: 1,
    );
  }

  static Future<void> insert(String table, Map<String, Object> data) async {
    final db = await DbUtils.database();
    await db.insert(table, data, conflictAlgorithm: ConflictAlgorithm.replace);
  }
}
