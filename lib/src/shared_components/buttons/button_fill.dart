import 'package:desafio_keyworks_mobile/src/theme/app_colors.dart';
import 'package:flutter/material.dart';

import '../animated_containers/fade_container.dart';

class ButtonFill extends StatefulWidget {
  final Function onTap;
  final double? width;
  final double heigth;
  final String title;
  final Color color;
  final Color colorText;
  final double fontSize;

  final BorderRadius borderRadius;

  ButtonFill({
    Key? key,
    this.width = 144,
    this.heigth = 46,
    this.fontSize = 18,
    required this.title,
    required this.onTap,
    Color? colorText,
    BorderRadius? borderRadius,
    Color? color,
  })  : color = color ?? AppColors.tertiaryColor,
        colorText = colorText ?? AppColors.secondaryColor,
        borderRadius = borderRadius ?? BorderRadius.circular(31),
        super(key: key);

  @override
  State<ButtonFill> createState() => _ButtonFillState();
}

class _ButtonFillState extends State<ButtonFill> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        curve: Curves.linearToEaseOut,
        width: isLoading ? widget.heigth : widget.width,
        height: widget.heigth,
        clipBehavior: Clip.hardEdge,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: widget.color,
            borderRadius:
                isLoading ? BorderRadius.circular(100) : widget.borderRadius),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: isLoading
                ? null
                : () async {
                    setState(() {
                      isLoading = true;
                    });
                    try {
                      await widget.onTap();
                    } finally {
                      setState(() {
                        isLoading = false;
                      });
                    }
                  },
            child: isLoading
                ? const CircularProgressIndicator(
                    color: AppColors.secondaryColor,
                  )
                : FadeContainer(
                    child: Text(
                      widget.title,
                      maxLines: 1,
                      overflow: TextOverflow.fade,
                      style: TextStyle(
                        color: widget.colorText,
                        fontSize: widget.fontSize,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}
