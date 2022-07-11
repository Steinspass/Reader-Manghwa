import 'package:flutter/material.dart';
import 'package:manga_reader/presentation/pages/details/details_page.dart';
import 'package:manga_reader/presentation/pages/filter/filter_page.dart';
import 'package:manga_reader/presentation/pages/home/home_page.dart';
import 'package:manga_reader/presentation/pages/reader/reader_page.dart';
import 'package:manga_reader/presentation/pages/settings/policy_page.dart';
import 'package:manga_reader/presentation/pages/settings/premium_page.dart';
import 'package:manga_reader/presentation/pages/settings/settings_page.dart';
import 'package:manga_reader/presentation/pages/settings/terms_cond_page.dart';
import 'package:manga_reader/presentation/routes/router_error.dart';


class RouterGeneretor{


  static Route<dynamic>? generateRoute(RouteSettings settings){

    final args = settings.arguments;


    switch (settings.name) {
      
      case '/Home': 
        return MaterialPageRoute(builder: (context) => HomePage(),);

      case '/Filter': 
        return MaterialPageRoute(builder: (context) => FilterPage(),);  

      case '/Details':
        return MaterialPageRoute(builder: (context) => DetailsPage(),);

      case '/Reader':
        return MaterialPageRoute(builder: (context) => ReaderPage(),);

      case '/Settings':
        return MaterialPageRoute(builder: (context) => SettingsPage(),);

      case '/Terms':
        return MaterialPageRoute(builder: (context) => TermsAndCondPage(),);

      case '/Premium':
        return MaterialPageRoute(builder: (context) => PremiumPage(),);

      case '/Policy':
        return MaterialPageRoute(builder: (context) => PolicyPage(),);

      case '/License':
        return MaterialPageRoute(builder: (context) => Theme(
          data: Theme.of(context).copyWith(
            brightness: Brightness.dark,
            appBarTheme: AppBarTheme(
              backgroundColor: Color(4278192148),
              textTheme: TextTheme(
              
              headline6: TextStyle(color: Colors.white),
              
            )
            ),
            textTheme: TextTheme(
              headline1: TextStyle(color: Colors.white),
              headline2: TextStyle(color: Colors.white),
              headline3: TextStyle(color: Colors.white),
              headline4: TextStyle(color: Colors.white),
              headline5: TextStyle(color: Colors.white),
              headline6: TextStyle(color: Colors.white),
              bodyText1: TextStyle(color: Colors.white),
              bodyText2: TextStyle(color: Colors.white),
              subtitle1: TextStyle(color: Colors.white),
              subtitle2: TextStyle(color: Colors.white),
            )
          ),
          child: LicensePage(),
        ),
        );  
      
      

        
      default: routeError();
    }


  }



}
