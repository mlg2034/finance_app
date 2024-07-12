import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class LocaleDataBase {
  static final LocaleDataBase _instance = LocaleDataBase._internal();
  factory LocaleDataBase() => _instance;
  static Database? _database;
  LocaleDataBase._internal();

  Future<Database> get dataBase async {
    if (_database != null) return _database!;
    _database = await _initDataBase();
    return _database!;
  }

  Future<Database> _initDataBase() async {
    String path = join(await getDatabasesPath(), 'finance_app.db');
    return openDatabase(path, version: 1, onCreate: _onCreate);
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE deposits(
        id TEXT,
        name TEXT,
        description TEXT,
        amount REAL
      )
    ''');
  }
}
