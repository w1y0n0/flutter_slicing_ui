// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_slicing_ui/core/theme/theme_config.dart';

class QButton extends StatelessWidget {
  final String label;
  final Color? color;
  final Color labelColor;
  final Function onPressed;
  final bool disabled;
  const QButton({
    Key? key,
    required this.label,
    this.color,
    this.labelColor = Colors.white,
    required this.onPressed,
    this.disabled = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 42,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color ?? primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        onPressed: disabled ? null : () => onPressed(),
        child: Text(
          label,
          style: TextStyle(
            color: labelColor,
          ),
        ),
      ),
    );
  }
}
