import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class Textfield extends StatelessWidget {
  Textfield({
    required this.labelText,
    required this.controller,
    required this.prifixIcon,
     this.obscureText = false,
  });

  final String labelText;
  final Icon prifixIcon;
  final TextEditingController controller;
  final bool? obscureText ;


  GlobalKey<FormState> _FormKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: MultiValidator([RequiredValidator(errorText: "Required")]),
            obscureText: obscureText!,
            controller: controller,
            decoration: InputDecoration(
              labelText: labelText,
              labelStyle:const TextStyle(fontSize: 22),
              prefixIcon: prifixIcon,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
