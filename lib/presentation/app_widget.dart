import 'package:flutter/material.dart';
import 'package:manga_reader/presentation/theme/app_theme.dart';
import 'package:sizer/sizer.dart';
import 'package:manga_reader/presentation/routes/router.dart';


class AppWidget extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {

    return Sizer(
      builder:(context, orientation, deviceType){
         return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Manga Reader',
          theme: appTheme(context),
          initialRoute: '/Home',
          onGenerateRoute: RouterGeneretor.generateRoute,
        );
      }
    );

   
  }
}