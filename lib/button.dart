import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key,this.content,this.onTap});
  final String? content;
  final Function? onTap;
  @override
  Widget build(BuildContext context) {
    return   ElevatedButton(
              onPressed:(){
                onTap!();
              },
              child:  Text(content ?? ''),
            );
  }
}