// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appTitle => 'Application TicTic';

  @override
  String get connectionText => 'Connexion';

  @override
  String get continueText => 'Continuer sans compte';

  @override
  String get createAccountText => 'Inscription';

  @override
  String get financialHarmonyText => 'L’harmonie financière dans vos groupes, en toute simplicité !';

  @override
  String get constantCalculationsText => 'Calculs instantanés, équité garantie avec TicTic !';

  @override
  String get tediousCalculationsText => 'Calculs fastidieux ? Non merci. Optez pour la simplicité avec TicTic !';

  @override
  String get ticTicText => 'TicTic : Vos dépenses partagées en toute simplicité !';

  @override
  String get registerText => 'S\'inscrire';

  @override
  String get username_label => 'Nom d\'utilisateur';

  @override
  String get user_email_label => 'Email';

  @override
  String get user_email_placeholder => 'John@doe.be';

  @override
  String get no_account => 'Pas de compte ?';

  @override
  String get user_password_label => 'Mot de passe';

  @override
  String get already_an_account => 'Déjà un compte ?';

  @override
  String get username_placeholder => 'JohnDoe';

  @override
  String form_field_required(String field_name) {
    return 'Le champs \"$field_name\" est requis.';
  }

  @override
  String get homePageText => 'Bienvenue';

  @override
  String get logoutText => 'Se déconnecter';
}
