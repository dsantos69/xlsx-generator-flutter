import 'dart:io';

import 'package:excel/excel.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class XlsxHelper {
  XlsxModel model;

  XlsxHelper({required this.model});

  Future<void> createXlsxFile() async {
    final Excel excel = Excel.createExcel();
    excel.rename("Sheet1", model.fileName);
    final Sheet sheet = excel[model.fileName];

    await Future.forEach(model.rows.keys, (int key) async {
      final rowData = model.convertMapToList(key);
      sheet.appendRow(rowData);
    });

    List<int>? fileBytes = excel.save(fileName: model.fileName);

    _save(fileBytes: fileBytes);
  }

  Future<void> _save({required List<int>? fileBytes}) async {
    if (fileBytes == null) {
      throw ArgumentError('Error saving xlsx file.');
    }

    final Directory directory = await getApplicationDocumentsDirectory();
    final String filePath = join(directory.path, '${model.fileName}.xlsx');

    File(filePath)
      ..createSync(recursive: true)
      ..writeAsBytesSync(fileBytes);
  }
}

class XlsxModel {
  XlsxModel({
    required this.fileName,
    required this.rows,
  });

  String fileName;
  Map<int, List<String>> rows;

  List<String> convertMapToList(int index) {
    List<String> result = [];

    rows.forEach((key, value) {
      if (key == index) {
        result.addAll(value);
      }
    });

    return result;
  }
}
