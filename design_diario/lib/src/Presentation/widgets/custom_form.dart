import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomForm extends StatefulWidget {
  final String label;
  final Function(String)? onPressed;
  bool obscureTextPassword;
  final void Function(String text)? onChanged;
  String? Function(String? text)? validator;
  final Widget? suffix;
  final TextEditingController controller;

  CustomForm({
    super.key,
    required this.label,
    this.onPressed,
    this.validator,
    this.obscureTextPassword = false,
    this.onChanged,
    this.suffix,
    required this.controller,
  });

  @override
  State<CustomForm> createState() => _CustomFormState();
}

class _CustomFormState extends State<CustomForm> {
  var passwordCache = '';

  var confirmPasswordCache = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: TextFormField(
        controller: widget.controller,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        obscureText: widget.obscureTextPassword,
        validator: widget.validator,
        onChanged: widget.onChanged,
        decoration: InputDecoration(
          border: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromRGBO(217, 217, 217, 1),
            ),
          ),
          labelText: widget.label,
          labelStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Color.fromRGBO(83, 78, 78, 0.5)),
        ),
      ),
    );
  }
}
