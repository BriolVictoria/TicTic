import 'package:flutter/material.dart';

import '../../l10n/app_localizations.dart';
import 'my_text_input.dart';

class PasswordInput extends StatefulWidget {
  const PasswordInput({super.key, this.passwordController});
  final TextEditingController? passwordController;
  

  @override
  State<PasswordInput> createState() => _PasswordInputState();
}

class _PasswordInputState extends State<PasswordInput> {
  late bool _isObscured = true;


  @override
  Widget build(BuildContext context) {
    return MyTextInput(
      controller: widget.passwordController,
      obscureText: _isObscured,
      labelText: AppLocalizations.of(context)!.user_password_label,
      prefixIcon: Icon(Icons.password),
      suffixIcon: IconButton(
          icon: _isObscured ? const Icon(Icons.visibility_off) : const Icon(Icons.visibility),
        onPressed: () {
            setState(() {
              _isObscured = !_isObscured;
            });
        },
          ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return AppLocalizations.of(
            context,
          )!.form_field_required(
            AppLocalizations.of(context)!.user_password_label,
          );
        }
        return null;
      },
    );
  }
}
