import 'dart:io';

import 'package:hive/hive.dart';

import 'package:path_provider/path_provider.dart' as path_provider;

class LocalData {
  LocalData();

  void saveData({dynamic key, dynamic value}) async {
    final appDocumentDir =
        await path_provider.getApplicationDocumentsDirectory();

    Hive.init(appDocumentDir.path);

    var box = await Hive.openBox('DATES');
    await box.put(key, value);
  }

  Future<dynamic> loadData({dynamic key}) async {
    final appDocumentDir =
        await path_provider.getApplicationDocumentsDirectory();
    Hive.init(appDocumentDir.path);

    var box = await Hive.openBox('DATES');
    return box.get(key);
  }
}
