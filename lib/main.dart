import 'package:flutter/material.dart';
import 'package:solve_equation/equation_formal_holder.dart';

void main() {
  runApp(const EquationSolveApp());
}

class EquationSolveApp extends StatelessWidget {
  const EquationSolveApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Equation Solver',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const EquationFormalHolder(),
    );
  }
}
