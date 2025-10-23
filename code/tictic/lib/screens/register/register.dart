import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tictic/constants/sizes.dart';
import 'package:tictic/l10n/app_localizations.dart';
import 'package:tictic/screens/login/login.dart';
import 'package:tictic/screens/scaffold_with_image.dart';
import 'package:tictic/screens/welcome/widgets/logo_welcome.dart';
import 'package:tictic/widgets/form/email_input.dart';
import 'package:tictic/widgets/form/password_input.dart';
import 'package:tictic/widgets/form/username_input.dart';

import '../home_page/home_page.dart';

class Register extends StatelessWidget {
  Register({super.key});

  static const String routeName = '/register';

  final GlobalKey<FormState> _registerFormKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController(text: kDebugMode ? 'Pedro' : null);
  final _emailController = TextEditingController(text: kDebugMode ? 'Pedro.pascal@gmail.com' : null);
  final _passwordController = TextEditingController(text: kDebugMode ? '123' : null);

  @override
  Widget build(BuildContext context) {
    return ScaffoldWithImage(
      child: Padding(
        padding: const EdgeInsets.only(top: kVerticalPadding * 2),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(width: kHorizontalPadding),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back),
                ),
              ],
            ),
            SizedBox(height: kVerticalPaddingL),
            LogoWelcome(),
            SizedBox(height: kVerticalPaddingL),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: kHorizontalPadding,
              ),
              child: Form(
                key: _registerFormKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    UsernameInput(usernameController: _usernameController),
                    SizedBox(height: kVerticalPaddingL),
                    EmailInput(emailController: _emailController),
                    SizedBox(height: kVerticalPaddingL),
                    PasswordInput(passwordController: _passwordController),
                    SizedBox(height: kVerticalPaddingL),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, Homepage.routeName);
                        _registerFormKey.currentState?.validate();
                      },
                      child: Text(AppLocalizations.of(context)!.registerText),
                    ),
                  ],
                ),
              ),
            ),
            Spacer(),
            Column(
              children: [
                Text(AppLocalizations.of(context)!.already_an_account),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Login.routeName);
                  },
                  child: Text(AppLocalizations.of(context)!.connectionText),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
