import 'package:e_commerce_flutter/utils/routes.dart';
import 'package:e_commerce_flutter/views/pages/intro_page.dart';
import 'package:e_commerce_flutter/views/pages/auth_page.dart';
import 'package:flutter/cupertino.dart';

Route<dynamic> onGenerate(RouteSettings settings){
  switch(settings.name){
    case AppRouets.authPageRoute:
      return CupertinoPageRoute(builder: (_)=> const AuthPage());
    case AppRouets.introPageRoute:
    default:
      return CupertinoPageRoute(builder: (_) => const IntroPage());
  }
}