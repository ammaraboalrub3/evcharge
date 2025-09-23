import 'package:evcharge/features/auth/presentation/view/widgets/custom_text_form_field.dart';
import 'package:evcharge/generated/l10n.dart';
import 'package:flutter/material.dart';

class CustomPasswordFormField extends StatefulWidget {
  const CustomPasswordFormField({super.key, this.onSaved});
  final void Function(String?)? onSaved;

  @override
  State<CustomPasswordFormField> createState() =>
      _CustomPasswordFormFieldState();
}

class _CustomPasswordFormFieldState extends State<CustomPasswordFormField> {
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      obscureText: isObscure,
      onSaved: widget.onSaved,
      keyboardType: TextInputType.visiblePassword,
      suffixIcon: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: IconButton(
          onPressed: () {
            setState(() {
              isObscure = !isObscure;
            });
          },
          icon: isObscure
              ? Icon(Icons.visibility_sharp, color: Color(0xffC9CECF))
              : Icon(Icons.visibility_off, color: Color(0xffC9CECF)),
        ),
      ),
      hintText: S.of(context).password,
    );
  }
}
