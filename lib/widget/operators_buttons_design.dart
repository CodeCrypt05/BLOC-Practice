import 'package:flutter/material.dart';

class OperatorsButtonDesign extends StatefulWidget {
  final String numbers;
  const OperatorsButtonDesign({
    super.key,
    required this.numbers,
  });

  @override
  State<OperatorsButtonDesign> createState() => _OperatorsButtonDesignState();
}

class _OperatorsButtonDesignState extends State<OperatorsButtonDesign> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
        style: TextStyle(
          color: Colors.orange,
          fontSize: 24,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
