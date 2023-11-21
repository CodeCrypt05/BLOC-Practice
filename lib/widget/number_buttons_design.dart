import 'package:bloc_practice/bloc/calculation_bloc.dart';
import 'package:bloc_practice/bloc/calculation_event.dart';
import 'package:bloc_practice/bloc/calculation_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NumberButtonsDesign extends StatefulWidget {
  final String numbers;
  const NumberButtonsDesign({
    super.key,
    required this.numbers,
  });

  @override
  State<NumberButtonsDesign> createState() => _ButtonsState();
}

class _ButtonsState extends State<NumberButtonsDesign> {
  @override
  Widget build(BuildContext context) {
    final CalculationBloc bloc = BlocProvider.of<CalculationBloc>(context);
    return BlocBuilder<CalculationBloc, CalculationState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            print(widget.numbers);
            bloc.add(NumberPressed(int.parse(widget.numbers)));
          },
          child: Container(
            height: 60,
            width: 60,
            margin: const EdgeInsets.only(top: 18),
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(1, 1),
                  blurRadius: 2,
                ),
              ],
            ),
            alignment: Alignment.center,
            child: Text(
              widget.numbers,
              style: const TextStyle(
                color: Color.fromARGB(255, 22, 22, 22),
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        );
      },
    );
  }
}
