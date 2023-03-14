import 'package:di_example/summator.dart';

enum CalculatorServiceOperation { summ }

abstract class CalculatorServiceSummator {
  int summ(int a, int b);
}

class CalculatorService {
  final Summator summator;

  CalculatorService({required this.summator});

  int calculator(int a, int b, CalculatorServiceOperation operation) {
    if (operation == CalculatorServiceOperation.summ) {
      return summator.summ(a, b);
    } else {
      return 0;
    }
  }
}
