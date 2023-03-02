import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  const RoundButton({
    Key? key,
    required this.label,
    required this.onPress,
    this.height = 40,
    this.width = 120,
    this.backColor = Colors.red,
    this.textColor = Colors.green,
    this.loading = false,
    this.radius = 40,
  }) : super(key: key);

  final Color backColor, textColor;
  final String label;
  final double height, width, radius;
  final VoidCallback onPress;
  final bool loading;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onPress,
        child: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              color: backColor,
              borderRadius: BorderRadius.circular(radius),
            ),
            child: loading
                ? const Center(
                    child: CircularProgressIndicator(
                    backgroundColor: Colors.amber,
                  ))
                : Center(
                    child: Text(label),
                  )));
  }
}
