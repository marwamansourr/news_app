import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final String labelText;
  final TextEditingController controller;
  final Widget? icon;
  final bool? obscureText;
  const CustomTextFormField(
      {super.key,
      required this.hintText,
      required this.controller,
      this.icon,
      this.obscureText,
      required this.labelText});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height * 0.11,
        width: MediaQuery.of(context).size.width * 0.9,
        child: TextFormField(
            controller: controller,
            obscureText: obscureText!,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: labelText,
              suffixIcon: icon != null
                  ? IconButton(onPressed: () {}, icon: icon!)
                  : null,
              suffixIconColor: Theme.of(context).canvasColor,
              hintText: hintText,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              hintStyle: TextStyle(color: Theme.of(context).canvasColor),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Theme.of(context).canvasColor),
              ),
            )));
  }
}
