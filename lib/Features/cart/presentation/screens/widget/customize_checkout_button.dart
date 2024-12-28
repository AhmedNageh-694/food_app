import 'package:flutter/material.dart';

class CustomizeCheckoutButton extends StatelessWidget {
  const CustomizeCheckoutButton({
    super.key,
    required this.title,
    this.onTap,
    required this.isLoading,
    required this.width,
    required this.background,
    required this.height,
    this.style,
  });

  final String title;
  final double width;
  final double height;
  final Function()? onTap;
  final Color background;
  final bool isLoading;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: isLoading ? null : onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: background,
          border: const Border.fromBorderSide(
            BorderSide(color: Color(0xff34A853)),
          ),
        ),
        child: Center(
          child: isLoading
              ? const CircularProgressIndicator()
              : Text(
                  title,
                  style: style ??
                      const TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                      ),
                ),
        ),
      ),
    );
  }
}
