import 'package:flutter/material.dart';

class ButtonComponent extends StatelessWidget {
  final String label;
  final IconData? icon;
  final Function()? onPressed;
  final bool? enabled;
  final bool? expanded;
  final Color? backgroundColor;
  final Color? textColor;
  const ButtonComponent({
    super.key,
    required this.label,
    this.icon,
    this.backgroundColor,
    this.textColor,
    this.onPressed,
    this.enabled = false,
    this.expanded = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
      child: SizedBox(
        width: expanded! ? 100 : null,
        height: 40,
        child: icon != null
            ? ElevatedButton.icon(
                icon: Icon(icon),
                onPressed: enabled! ? onPressed : null,
                label: Text(label),
                style: backgroundColor != null
                    ? ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll<Color>(
                          backgroundColor!,
                        ),
                      )
                    : null,
              )
            : ElevatedButton(
                onPressed: enabled! ? onPressed : null,
                style: backgroundColor != null
                    ? ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll<Color>(
                          backgroundColor!,
                        ),
                      )
                    : null,
                child: Text(
                  label,
                  style: TextStyle(
                    color: textColor,
                  ),
                ),
              ),
      ),
    );
  }
}
