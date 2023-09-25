import 'package:xlsx_generator/models/select_model.dart';

var selectOptionsData = [
  SelectModel(
    name: 'Informações gerais',
    option: SelectOptions.generalInfo,
  ),
  SelectModel(
    name: 'Parâmetros básicos',
    option: SelectOptions.basicParameters,
  ),
  SelectModel(
    name: 'Parâmetros de comunicação',
    option: SelectOptions.communicationParameters,
  ),
  SelectModel(
    name: 'Log de falta',
    option: SelectOptions.faultLogs,
  ),
  SelectModel(
    name: 'Status de entrada',
    option: SelectOptions.inputStatus,
  ),
  SelectModel(
    name: 'Grupo de proteção 1',
    option: SelectOptions.protectionGroupOne,
  ),
  SelectModel(
    name: 'Grupo de proteção 2',
    option: SelectOptions.protectionGroupTwo,
  ),
  SelectModel(
    name: 'Leitura de arquivo SOE',
    option: SelectOptions.readingFileSoe,
  ),
  SelectModel(
    name: 'Status de medição',
    option: SelectOptions.statusMeasurement,
  ),
  SelectModel(
    name: 'Parâmetros de depuração sem fio',
    option: SelectOptions.wirelessDebuggingParameters,
  ),
];
