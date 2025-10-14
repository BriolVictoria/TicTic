import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:tictic/l10n/app_localizations.dart';
import 'package:tictic/routes.dart';
import './constants/colors.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FlutterLocalization.instance.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppLocalizations.of(context)?.appTitle, //dire qu'on aimerais bien qu'on exécute le code seulement si c'est pas null, on doit mettre les ?? donc si ça c'est null on met ça sinon ça
      //si on est certain de ce qu'on fait on met !, le nullsafty pour se rappeler de savoir si c'est nul ou pas
      routes: routes,
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [const Locale('en'), const Locale('fr')],
      theme: kAppTheme,
      //Si on regarde la constante c'est générer et ça permet de définir l'ensemble des variables qui vont être utilisés pour faire l'aspect couleur de notre application
    );
  }
}
