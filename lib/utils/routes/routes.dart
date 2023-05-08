import 'package:demo2/res/componets/search_bar.dart';
import 'package:demo2/view/login_view.dart';
import 'package:demo2/view/perfume_details.dart';
import 'package:demo2/utils/routes/routes_name.dart';
import 'package:demo2/view/sigup_view.dart';
import 'package:flutter/material.dart';

import '../../view/home_view.dart';

class Routes {

  static Route<dynamic>  generateRoute(RouteSettings settings){

    switch(settings.name){

      case RoutesName.home:
        return MaterialPageRoute(builder: (BuildContext context) =>  HomePage());

      case RoutesName.login:
        return MaterialPageRoute(builder: (BuildContext context) => const LoginView());

        case RoutesName.signUp:
        return MaterialPageRoute(builder: (BuildContext context) => const SignUpView());

      case RoutesName.detail:
        return MaterialPageRoute(builder: (BuildContext context) =>  PerfumeDetail());

      case RoutesName.search:
        return MaterialPageRoute(builder: (BuildContext context) =>  SearchBar());

      default:
        return MaterialPageRoute(builder: (_){
          return const Scaffold(
            body: Center(
              child: Text('No route defined'),
            ),
          );
        });

    }
  }
}