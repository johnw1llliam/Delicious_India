import 'dart:async';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

class NameSave {
  /// Get the local path
  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();

    return directory.path;
  }

  /// Get the path for the save file
  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/name_save.txt');
  }

  /// Read the saved file
  Future<String> readSave() async {
    final file = await _localFile;

    // Read the file
    final contents = await file.readAsString();
    return contents;
  }

  /// Write first save for initializing save file
  Future writeFirstSave() async {
    final file = await _localFile;

    if (!await file.exists()) {
      await file.create();
      String initData = '';
      return file.writeAsString(initData);
    } else {
      return;
    }
  }

  /// Add new name data
  Future<File> writeName(String name) async {
    final file = await _localFile;
    return file.writeAsString(name);
  }
}
