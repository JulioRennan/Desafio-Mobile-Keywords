import 'package:desafio_keyworks_mobile/src/utils/build_context_extensions.dart';
import 'package:flutter/material.dart';

class RoundedIcon extends StatelessWidget {
  final IconData iconData;
  final bool isSelected;
  const RoundedIcon(
    this.iconData, {
    required this.isSelected,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          100,
        ),
      ),
      clipBehavior: Clip.antiAlias,
      child: Stack(
        children: [
          Container(
            width: 40,
            height: 40,
            color: context.lightColor,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: AnimatedContainer(
              width: 40,
              height: height,
              color: context.tertiaryColor,
              duration: const Duration(seconds: 1),
            ),
          ),
          Center(
            child: Icon(
              iconData,
            ),
          ),
        ],
      ),
    );
  }

  double get height {
    if (isSelected) {
      return 40;
    } else {
      return 0;
    }
  }
}
