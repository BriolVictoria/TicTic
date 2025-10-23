// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Application TicTic (en)';

  @override
  String get connectionText => 'I connect';

  @override
  String get continueText => 'Continue without an account';

  @override
  String get createAccountText => 'Create an account';

  @override
  String get financialHarmonyText => 'Financial harmony in your groups, made simple!';

  @override
  String get constantCalculationsText => 'Instant calculations, fairness guaranteed with TicTic!';

  @override
  String get tediousCalculationsText => 'Tedious calculations? No thanks. Choose simplicity with TicTic!';

  @override
  String get ticTicText => 'TicTic : TicTic: Share your expenses with ease!';

  @override
  String get registerText => 'Register';

  @override
  String get username_label => 'Username';

  @override
  String get user_email_label => 'Email';

  @override
  String get user_email_placeholder => 'John@doe.be';

  @override
  String get no_account => 'Don\'t have an account ?';

  @override
  String get user_password_label => 'Password';

  @override
  String get already_an_account => 'Already an account ?';

  @override
  String get username_placeholder => 'JohnDoe';

  @override
  String form_field_required(String field_name) {
    return 'The field \"$field_name\" is required.';
  }

  @override
  String get homePageText => 'Welcome';

  @override
  String get logoutText => 'Logout';
}
