import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final Color color;
  final TextInputType keyboardType;
  final bool obscureText;
  final String label;
  final String? errorMessage;
  const InputField({
    super.key,
    this.color = const Color(0xFF24786D),
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    required this.label,
    this.errorMessage,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      obscuringCharacter: '*',
      keyboardType: keyboardType,
      decoration: InputDecoration(
        labelText: label,
        labelStyle:
            TextStyle(color: color, fontSize: 14, fontWeight: FontWeight.w600),
        error: errorMessage != null
            ? Align(
                alignment: Alignment.centerRight,
                child: Text(
                  errorMessage!,
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xFFff2D1B),
                    fontFamily: 'Circular',
                  ),
                  textAlign: TextAlign.right,
                ),
              )
            : null,
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: color,
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: color,
            width: 2.0,
          ),
        ),
        errorBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFFff2D1B),
            width: 2.0,
          ),
        ),
      ),
    );
  }
}
