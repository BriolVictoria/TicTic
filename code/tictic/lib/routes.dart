import 'package:tictic/screens/login/login.dart';
import 'package:tictic/screens/register/register.dart';
import 'package:tictic/screens/welcome/welcome.dart';
import 'package:tictic/screens/home_page/home_page.dart';

final routes = {
  Welcome.routeName: (context) => Welcome(),
  Register.routeName: (context) => Register(),
  Login.routeName: (context) => Login(),
  Homepage.routeName: (context) => Homepage(),
};
