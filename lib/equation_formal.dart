import 'package:flutter/material.dart';
import 'dart:math';

// import 'package:solve_equation/equation_formal_holder.dart';

class EquationFormal extends StatefulWidget {
  const EquationFormal({super.key});
  @override
  State<EquationFormal> createState() => _EquationFormalState();
}

class _EquationFormalState extends State<EquationFormal> {
  final TextEditingController _aController = TextEditingController();
  final TextEditingController _bController = TextEditingController();
  final TextEditingController _cController = TextEditingController();

  String _result = '';

  void _solveQuadraticEquation() {
    double a = double.tryParse(_aController.text) ?? 0.0;
    double b = double.tryParse(_bController.text) ?? 0.0;
    double c = double.tryParse(_cController.text) ?? 0.0;

    if (a == 0) {
      _result = 'Giá trị A phải khác 0!!!';
    }
    else {
      double delta = b * b - 4 * a * c;
      double x1, x2;

      if (delta > 0) {
        x1 = (-b + sqrt(delta)) / (2 * a);
        x2 = (-b - sqrt(delta)) / (2 * a);
        _result =
            'Delta = $delta > 0 \n\nPhương trình có 2 nghiệm: \nx1  =  ${x1.toStringAsFixed(2)} \nx2  =  ${x2.toStringAsFixed(2)}';
      } else if (delta == 0) {
        x1 = (-b) / (2 * a);
        _result =
            'Delta = $delta \n\nPhương trình có nghiệm kép: \nx1  =  x2 = ${x1.toStringAsFixed(2)}';
      } else {
        _result = 'Delta = $delta < 0 \n\nPhương trình vô nghiệm!';
      }
      
    }
    setState(() {});
  }

  void _clearResult() {
    _aController.clear();
    _bController.clear();
    _cController.clear();
    _result = '';
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.start,
      children: [
        TextField(
          controller: _aController,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
            labelText: 'Enter A',
            labelStyle: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        TextField(
          controller: _bController,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
            labelText: 'Enter B',
            labelStyle: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        TextField(
          controller: _cController,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
            labelText: 'Enter C',
            labelStyle: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(height: 30.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: _solveQuadraticEquation,
              child: const Text('Solve the equation'),
            ),
            ElevatedButton(
              onPressed: _clearResult,
              child: const Text('Clear result'),
            ),
          ],
        ),
        const SizedBox(height: 16.0),
        Text(
          _result,
          style: const TextStyle(fontSize: 16.0),
        ),
      ],
    );
  }
}
