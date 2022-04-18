import 'package:desafio_keyworks_mobile/src/utils/build_context_extensions.dart';
import 'package:flutter/material.dart';

class NewsCircleOption extends StatelessWidget {
  final bool isSelected;
  const NewsCircleOption({
    Key? key,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      width: 8,
      height: 8,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: context.lightColor,
      ),
      child: AnimatedContainer(
        duration: const Duration(seconds: 1),
        width: 8,
        color: isSelected ? context.secondaryColor : Colors.transparent,
        height: isSelected ? 8 : 0,
      ),
    );
  }
}
