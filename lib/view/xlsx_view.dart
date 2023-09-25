import 'package:flutter/material.dart';
import 'package:xlsx_generator/controllers/xlsx_controller.dart';
import 'package:xlsx_generator/data/select_options_data.dart';

class XlsxView extends StatefulWidget {
  const XlsxView({super.key});

  @override
  State<XlsxView> createState() => _XlsxViewState();
}

class _XlsxViewState extends State<XlsxView> {
  final controller = XlsxController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'Select XLSX document',
            style: TextStyle(fontSize: 24),
          ),
          const SizedBox(height: 20),
          DropdownButton(
            value: controller.selectModel,
            items: selectOptionsData
                .map((item) =>
                    DropdownMenuItem(value: item, child: Text(item.name)))
                .toList(),
            onChanged: (value) {
              setState(() {
                controller.updateSelectModel(value!);
              });
            },
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            child: const Text("Create"),
            onPressed: () => controller.importToXlsx(),
          ),
        ],
      ),
    );
  }
}
