import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonName;
  final dynamic onPressed;
  final GlobalKey<FormState> formKey;
  const CustomButton(
      {super.key,
      required this.buttonName,
      required this.formKey,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 28, right: 28),
      child: SizedBox(
        width: 382,
        height: 60,
        child: ElevatedButton(
          style: ButtonStyle(
            // backgroundColor: MaterialStateProperty.all(
            //   const Color.fromRGBO(24, 211, 190, 1),
            // ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
            ),
          ),
          onPressed: onPressed,
          child: Text(
            buttonName,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
              color: Color.fromRGBO(255, 255, 255, 1),
            ),
          ),
        ),
      ),
    );
  }
}
