import 'package:flutter/material.dart';

import 'package:chatapp/pages/ChatPage.dart';
import 'package:chatapp/pages/LoadingPage.dart';
import 'package:chatapp/pages/LoginPage.dart';
import 'package:chatapp/pages/RegisterPage.dart';
import 'package:chatapp/pages/UsersPage.dart';

final Map<String, Widget Function(BuildContext)> routes = {
  'users'   : (context) => UsersPage(),
  'Chat'    : (context) => ChatPage(),
  'login'   : (context) => LoginPage(),
  'register': (context) => RegisterPage(),
  'loading' : (context) => LoadingPage(),
};

getRoutes() => routes;
