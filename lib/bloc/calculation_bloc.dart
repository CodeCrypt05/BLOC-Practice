import 'package:bloc_practice/bloc/calculation_event.dart';
import 'package:bloc_practice/bloc/calculation_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CalculationBloc extends Bloc<CalculationEvent, CalculationState> {
  CalculationBloc() : super(CalculationInitial('0', 0)) {
    on<NumberPressed>((event, emit) {
      String updatedHistory = state.history + event.number.toString();
      emit(CalculationInitial(updatedHistory, event.number));
    });
  }
}
