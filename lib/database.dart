import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class LocalDatabase {
  static final LocalDatabase instance = LocalDatabase._();
  static Database? _database;

  LocalDatabase._();

  Future<Database> get database async {
    if (_database != null) {
      return _database!;
    }

    _database = await initDatabase();
    return _database!;
  }

  Future<Database> initDatabase() async {
    final String path = join(await getDatabasesPath(), 'comments.db');

    return await openDatabase(
      path,
      version: 1,
      onCreate: (Database db, int version) async {
        await db.execute(
          '''
          CREATE TABLE IF NOT EXISTS comments(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            comment TEXT
          )
          ''',
        );
      },
    );
  }

  Future<void> addComment(String comment) async {
    final Database db = await instance.database;
    await db.insert('comments', {'comment': comment});
  }

  Future<void> deleteComment(int id) async {
    final Database db = await instance.database;
    await db.delete('comments', where: 'id = ?', whereArgs: [id]);
  }

  Future<List<String>> getComments() async {
    final Database db = await instance.database;
    final List<Map<String, dynamic>> maps = await db.query('comments');
    return List.generate(maps.length, (index) => maps[index]['comment'] as String);
  }
}
