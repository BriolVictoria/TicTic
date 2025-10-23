import 'package:flutter/material.dart';
import 'package:tictic/constants/fonts.dart';
import 'package:tictic/constants/sizes.dart';
import 'package:tictic/l10n/app_localizations.dart';
import 'package:tictic/screens/home_page/logo_profil.dart';
import 'package:tictic/screens/scaffold_with_image.dart';
import 'package:tictic/screens/welcome/welcome.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  static const String routeName = '/HomePage';

  @override
  Widget build(BuildContext context) {
    return ScaffoldWithImage(
      child: Padding(
        padding: const EdgeInsets.only(top: kVerticalPadding * 2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LogoProfil(),
            Text(AppLocalizations.of(context)!.homePageText, style: kTextHomePage),
            Padding(
              padding: const EdgeInsets.only(top: kVerticalPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: kHorizontalPadding),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, Welcome.routeName);
                    },
                    child: Text(AppLocalizations.of(context)!.logoutText),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


