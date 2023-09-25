class SelectModel {
  SelectModel({required this.name, required this.option});

  String name;
  SelectOptions option;
}

enum SelectOptions {
  generalInfo,
  basicParameters,
  communicationParameters,
  faultLogs,
  inputStatus,
  protectionGroupOne,
  protectionGroupTwo,
  readingFileSoe,
  statusMeasurement,
  wirelessDebuggingParameters,
}
