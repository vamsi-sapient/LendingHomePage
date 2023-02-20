import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String title;
  final Color foregroundColor;
  final Color backgroundColor;
  final Function() onPressed;

  final bool hasBorder;

  const AppButton({
    Key? key,
    required this.onPressed,
    required this.title,
    this.foregroundColor = Colors.white,
    this.backgroundColor = const Color(0xFF006A4D),
    this.hasBorder = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SizedBox(
        height: 55,
        width: double.infinity,
        child: Expanded(
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(backgroundColor),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0.0),
                  side: hasBorder ? const BorderSide(color: Color(0xFF006A4D), width: 1): BorderSide.none,
                ),
              ),
            ),
            onPressed: onPressed,
            child: Text(
              title,
              style: TextStyle(fontFamily: 'inter', fontSize: 16, fontWeight: FontWeight.w600, color: foregroundColor),
            ),
          ),
        ),
      ),
    );
  }
}
