import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tictic/constants/sizes.dart';
import 'package:tictic/l10n/app_localizations.dart';
import 'package:tictic/screens/home_page/home_page.dart';
import 'package:tictic/screens/register/register.dart';
import 'package:tictic/screens/scaffold_with_image.dart';
import 'package:tictic/screens/welcome/widgets/logo_welcome.dart';
import 'package:tictic/widgets/form/email_input.dart';
import 'package:tictic/widgets/form/password_input.dart';

class Login extends StatelessWidget {
  Login({super.key});

  static const String routeName = '/login';

  final GlobalKey<FormState> _loginFormKey = GlobalKey<FormState>();
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
                key: _loginFormKey,
                child: Column(
                  children: [
                    EmailInput(emailController: _emailController),
                    SizedBox(height: kVerticalPaddingL),
                    PasswordInput(passwordController: _passwordController),
                    SizedBox(height: kVerticalPaddingL),

                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, Homepage.routeName);
                        _loginFormKey.currentState?.validate();
                      },
                      child: Text(AppLocalizations.of(context)!.connectionText),
                    ),
                  ],
                ),
              ),
            ),
            Spacer(),
            Column(
              children: [
                Text(AppLocalizations.of(context)!.no_account),
                ElevatedButton(onPressed: () {
                  Navigator.pushNamed(context, Register.routeName);
                }, child: Text(AppLocalizations.of(context)!.registerText),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
