import 'package:xlsx_generator/data/select_options_data.dart';
import 'package:xlsx_generator/data/xlsx_data.dart';
import 'package:xlsx_generator/models/select_model.dart';
import 'package:xlsx_generator/utils/xlsx_helper.dart';

class XlsxController {
  SelectModel selectModel = selectOptionsData.first;

  Future<void> importToXlsx() async {
    final model = XlsxModel(
      fileName: selectModel.name,
      rows: selectedReading(),
    );
    final xlsx = XlsxHelper(model: model);

    await xlsx.createXlsxFile();
  }

  void updateSelectModel(SelectModel newModel) => selectModel = newModel;

  Map<int, List<String>> selectedReading() {
    Map<int, List<String>> selectedRow = {};

    switch (selectModel.option) {
      case SelectOptions.generalInfo:
        selectedRow = generalInfoRows;
        break;
      case SelectOptions.basicParameters:
        return {};
      case SelectOptions.communicationParameters:
        return {};
      case SelectOptions.faultLogs:
        return {};
      case SelectOptions.inputStatus:
        return {};
      case SelectOptions.protectionGroupOne:
        return {};
      case SelectOptions.protectionGroupTwo:
        return {};
      case SelectOptions.readingFileSoe:
        return {};
      case SelectOptions.statusMeasurement:
        selectedRow = statusMeasurement;
        break;
      case SelectOptions.wirelessDebuggingParameters:
        return {};

      default:
        {}
    }

    return selectedRow;
  }
}
