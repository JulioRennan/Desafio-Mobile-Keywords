import 'package:desafio_keyworks_mobile/src/utils/build_context_extensions.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String? labelText;
  final TextEditingController controller;
  final bool obscureText;

  CustomTextFormField({
    Key? key,
    this.labelText,
    this.obscureText = false,
    TextEditingController? controller,
  })  : controller = controller ?? TextEditingController(),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52,
      child: TextFormField(
        controller: controller,
        style: context.textTheme.bodySmall.withColor(context.secondaryColor),
        obscureText: obscureText,
        obscuringCharacter: '*',
        textAlignVertical: TextAlignVertical.top,
        decoration: InputDecoration(
          labelText: labelText,
          suffix: GestureDetector(
            child: Icon(
              Icons.close,
              color: context.secondaryColor,
              size: 18,
            ),
            onTap: controller.clear,
          ),
        ),
      ),
    );
  }
}
