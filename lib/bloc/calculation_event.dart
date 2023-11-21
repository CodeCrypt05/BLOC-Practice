abstract class CalculationEvent {}

class NumberPressed extends CalculationEvent {
  final int number;
  NumberPressed(this.number);
}

class OperatorPressed extends CalculationEvent {}

class CalculateResult extends CalculationEvent {}

class ClearCalculation extends CalculationEvent {}
