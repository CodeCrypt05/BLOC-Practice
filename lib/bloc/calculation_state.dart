class CalculationState {
  final String history;
  final int currentNumber;

  CalculationState(this.history, this.currentNumber);
}

class CalculationInitial extends CalculationState {
  CalculationInitial(String history, int currentNumber)
      : super(history, currentNumber);
}
