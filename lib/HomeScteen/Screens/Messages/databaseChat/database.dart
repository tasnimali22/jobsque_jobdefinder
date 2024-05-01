import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static Database? _database;
  static final _tableName = 'messages';
  static final _columnId = 'id';
  static final _columnSender = 'sender';
  static final _columnText = 'text';
  static final _columnTimestamp = 'timestamp';

  static Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  static Future<Database> _initDatabase() async {
    final path = join(await getDatabasesPath(), 'chat.db');
    return await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
          await db.execute('''
        CREATE TABLE $_tableName (
          $_columnId INTEGER PRIMARY KEY,
          $_columnSender TEXT,
          $_columnText TEXT,
          $_columnTimestamp TEXT
        )
        ''');
        });
  }

  static Future<void> insertMessage(Message message) async {
    final db = await database;
    await db.insert(_tableName, message.toMap());
  }

  static Future<List<Message>> getMessages() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query(_tableName);
    return List.generate(maps.length, (i) {
      return Message(
        id: maps[i]['id'],
        sender: maps[i]['sender'],
        text: maps[i]['text'],
        timestamp: maps[i]['timestamp'],
      );
    });
  }
}

class Message {
  final int? id;
  final String sender;
  final String text;
  final String timestamp;

  Message({this.id, required this.sender, required this.text, required this.timestamp});

  Map<String, dynamic> toMap() {
    return {
    'sender': sender,
    'text': text,
    'timestamp': timestamp,
  };
    }
}