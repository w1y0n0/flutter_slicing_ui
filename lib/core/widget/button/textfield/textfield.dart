// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

import '../../../theme/theme_config.dart';

class QTextField extends StatelessWidget {
  final String label;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final Function(String text)? onChanged;
  final Function(String text)? onFieldSubmitted;

  const QTextField({
    Key? key,
    required this.label,
    this.prefixIcon,
    this.suffixIcon,
    this.onChanged,
    this.onFieldSubmitted,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // obscureText: controller.isHidenPassword ? true : false,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(
          color: Colors.blueGrey,
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8.0),
          ),
          borderSide: BorderSide(
            color: Colors.blueGrey,
          ),
        ),
        prefixIcon: (prefixIcon != null)
            ? Icon(
                prefixIcon,
                color: primaryColor,
              )
            : null,
        suffixIcon: IconButton(
          onPressed: () {},
          icon: Icon(
            suffixIcon,
            size: 24.0,
            color: textfieldIconColor,
          ),
        ),
      ),
      onChanged: (value) {
        if (onChanged != null) {
          onChanged!(value);
        }
      },
      onFieldSubmitted: (value) {
        if (onFieldSubmitted != null) {
          onFieldSubmitted!(value);
        }
      },
    );
  }
}
