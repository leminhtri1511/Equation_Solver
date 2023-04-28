import 'package:flutter/material.dart';
import 'package:solve_equation/equation_formal.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;
const colors = [
  Color.fromARGB(255, 238, 247, 249),
  Color.fromARGB(255, 187, 235, 235),
];

class EquationFormalHolder extends StatelessWidget {
  const EquationFormalHolder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 40,
        title: const Text(
          'EQUATION SOLVER',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: colors,
            begin: startAlignment,
            end: endAlignment,
          ),
        ),
        child: const Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(40.0),
              child: EquationFormal(),
            ),
          ),
        ),
      ),
    );
  }
}
