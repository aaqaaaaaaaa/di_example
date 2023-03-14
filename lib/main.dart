import 'package:di_example/calculator_service.dart';
import 'package:di_example/example_view_model.dart';
import 'package:di_example/example_widget.dart';
import 'package:di_example/summator.dart';
import 'package:flutter/material.dart';

void main() {
  const summator = Summator();
  final service = CalculatorService(summator: summator);
  final model = ExampleCalcViewModel(calculator: service);
  final widget = ExampleWidget(model: model);
  runApp(MyApp(widget: widget));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.widget}) : super(key: key);
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: widget,
    );
  }
}
