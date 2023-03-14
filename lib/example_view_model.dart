import 'package:di_example/calculator_service.dart';
import 'package:di_example/example_widget.dart';

class ExampleCalcViewModel implements ExampleViewModel {
  final CalculatorService calculator;

  ExampleCalcViewModel({required this.calculator});

  @override
  void onPressMe() {
    final result = calculator.calculator(
      1,
      2,
      CalculatorServiceOperation.summ,
    );
    print(result);
  }

  @override
  void onPressMe2() {
    print('5');
  }
}

class ExamplePetModel implements ExampleViewModel {
  @override
  void onPressMe() {
    print('sssssssssssss');
  }

  @override
  void onPressMe2() {
    print('22222222222222222222');
  }
}
