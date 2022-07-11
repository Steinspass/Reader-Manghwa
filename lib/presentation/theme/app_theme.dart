import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

ThemeData? appTheme(BuildContext context){


  /// Colors variables
  
  final Color yellow = Color(4294956554);
  final Color yellowDark = Color(4294951680);
  final Color black = Color(4278192148);
  final Color greyBlack = Color(4279902248);
  final Color blueMarine = Color(4278197565);
  final Color blueMarineDark = Color(4278190631);


  /// Buttons Style
  
  final ButtonStyle styleElevatedButton = ElevatedButton.styleFrom(
    elevation: 1.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20)
    ),
    primary: yellow,
    padding: EdgeInsets.symmetric(
      horizontal: 10.0,
      vertical: 10.0
    ) 
  );


  final ButtonStyle styleOutlinedButton = OutlinedButton.styleFrom(
    elevation: 1.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20)
    ),
    side: BorderSide(
      color: yellow,
      width: 2.0
    ),
    primary: yellow,
    padding: EdgeInsets.symmetric(
      horizontal: 12.0,
      vertical: 12.0
    ) 
  );  

  



  /// Theme App

  return ThemeData(
    
    primaryColor: yellow,
    
    accentColor: yellowDark,
    
    brightness: Brightness.dark,
    
    scaffoldBackgroundColor: black,
    
    backgroundColor: greyBlack,
    
    bottomAppBarColor: blueMarine,

    canvasColor: Colors.transparent,
    
    textTheme: GoogleFonts.latoTextTheme(Theme.of(context).textTheme),
    
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: styleElevatedButton
    ),
    
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: styleOutlinedButton
    ),
    
    cardColor: greyBlack.withOpacity(0.5),

    appBarTheme: AppBarTheme(
      // // backgroundColor: Colors.transparent,
      // color: Colors.transparent,
      // shadowColor: Colors.transparent,
      actionsIconTheme: IconThemeData(
        color: Colors.grey[100],
        size: 25

      ),
      iconTheme: IconThemeData(
        color: Colors.grey[100],
        size: 25
      ),

      elevation: 20
      ),

      tabBarTheme: TabBarTheme(
        labelColor: Colors.grey[100],
        unselectedLabelColor: Colors.grey[800],
        labelStyle: TextStyle( fontSize: 12.sp , fontWeight: FontWeight.w700),
        unselectedLabelStyle: TextStyle( fontSize: 12.sp, fontWeight: FontWeight.w700 ),
      ),

    
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: black,
      unselectedItemColor: Colors.grey[800],
      selectedItemColor: Colors.white,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      // elevation: 5.0,
    ),
    

  );


}