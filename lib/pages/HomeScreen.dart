import 'package:bloc_practice/bloc/calculation_bloc.dart';
import 'package:bloc_practice/bloc/calculation_state.dart';
import 'package:bloc_practice/utils/constant.dart';
import 'package:bloc_practice/widget/number_buttons_design.dart';
import 'package:bloc_practice/widget/operators_buttons_design.dart';
// import 'package:bloc_practice/widget/ButtonsDesign.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    print(h);
    // ignore: prefer_const_constructors
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            buildResultScreen(),
            Expanded(child: buildButtonsScreen()),
          ],
        ),
      ),
    );
  }

  Widget buildResultScreen() {
    return Container(
      height: h! * 0.48,
      width: double.infinity,
      color: const Color.fromARGB(66, 255, 255, 255),
      child: BlocBuilder<CalculationBloc, CalculationState>(
        builder: (context, state) {
          if (state is CalculationInitial) {
            final result = state.currentNumber;
            final history = state.history;
            return Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  alignment: Alignment.bottomRight,
                  padding: EdgeInsets.fromLTRB(10, 20, 20, 0),
                  child: Column(
                    children: [
                      Text(
                        history.toString(),
                        style: const TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(255, 102, 102, 102)),
                        textAlign: TextAlign.end,
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.bottomRight,
                  padding: EdgeInsets.fromLTRB(10, 20, 20, 0),
                  child: const Text(
                    'result',
                    style: TextStyle(
                        fontSize: 24, color: Color.fromARGB(255, 65, 65, 65)),
                  ),
                ),
              ],
            );
          }
          return Container();
        },
      ),
    );
  }

  Widget buildButtonsScreen() {
    return Container(
      width: double.infinity,
      color: Color.fromARGB(255, 255, 255, 255),
      padding: const EdgeInsets.only(bottom: 24),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OperatorsButtonDesign(numbers: 'C'),
              OperatorsButtonDesign(numbers: 'X'),
              OperatorsButtonDesign(numbers: '%'),
              OperatorsButtonDesign(numbers: '/'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NumberButtonsDesign(numbers: '7'),
              NumberButtonsDesign(numbers: '8'),
              NumberButtonsDesign(numbers: '9'),
              OperatorsButtonDesign(numbers: 'X'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NumberButtonsDesign(numbers: '4'),
              NumberButtonsDesign(numbers: '5'),
              NumberButtonsDesign(numbers: '6'),
              OperatorsButtonDesign(numbers: '-'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NumberButtonsDesign(numbers: '1'),
              NumberButtonsDesign(numbers: '2'),
              NumberButtonsDesign(numbers: '3'),
              OperatorsButtonDesign(numbers: '+'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NumberButtonsDesign(numbers: '00'),
              NumberButtonsDesign(numbers: '0'),
              NumberButtonsDesign(numbers: '.'),
              OperatorsButtonDesign(numbers: '='),
            ],
          ),
        ],
      ),
    );
  }
}
