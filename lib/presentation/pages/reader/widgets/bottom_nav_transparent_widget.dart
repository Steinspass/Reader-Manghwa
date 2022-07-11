import 'package:flutter/material.dart';


class BottomNavTransparentWidget extends StatefulWidget {
  BottomNavTransparentWidget({Key? key}) : super(key: key);

  @override
  _BottomNavTransparentWidgetState createState() => _BottomNavTransparentWidgetState();
}

class _BottomNavTransparentWidgetState extends State<BottomNavTransparentWidget> {
  
  int _selectedIndex = 0;


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  
  
  @override
  Widget build(BuildContext context) {
    
    
    List<BottomNavigationBarItem> items = [
      
      // List of Chapters
      BottomNavigationBarItem(
        icon: Icon(Icons.format_align_justify_rounded),
        label: '', // 'Chapters',  
        backgroundColor: Color(4278192148).withOpacity(0.4),
      ),
      
      // Padding to separate de pages
      BottomNavigationBarItem(
        icon: Icon(Icons.crop_portrait_rounded),
        label: '',
        backgroundColor: Color(4278192148).withOpacity(0.4),
        activeIcon: Icon(Icons.view_agenda_rounded), 
      ),
      
      // Select brightness
      BottomNavigationBarItem(
        icon: Icon(Icons.brightness_5_rounded),
        label: '', // label: 'Brightness',
        backgroundColor: Color(4278192148).withOpacity(0.4),
      ),
      
      // Lock portrait or landscape screen
      BottomNavigationBarItem(
        icon: Icon(Icons.screen_lock_portrait_rounded),
        label: '', // label: 'Screen lock',
        backgroundColor: Color(4278192148).withOpacity(0.4),
        activeIcon: Icon(Icons.screen_lock_landscape_rounded),
      ),

    ];
    
    
    return BottomNavigationBar(
      backgroundColor: Color(4278192148).withOpacity(0.1),
      items: items,
      elevation: 10.0,
      type: BottomNavigationBarType.fixed,
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
    );
  }
}