import 'package:flutter/material.dart';

class ResetForm extends StatelessWidget {
  const ResetForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: TextFormField(
        decoration: const InputDecoration(
          hintText: 'Email',
          hintStyle:TextStyle(
            color: Color(0xFF979797)),
            focusedBorder: UnderlineInputBorder(
              borderSide:BorderSide(color: Color(0xFF1B383A))),
            ),
      ),
    );
  }
}