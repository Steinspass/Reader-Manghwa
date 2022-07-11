import 'package:flutter/material.dart';
import 'package:manga_reader/presentation/pages/download/download_page.dart';
import 'package:manga_reader/presentation/pages/explorer/explorer_page.dart';
import 'package:manga_reader/presentation/pages/filter/widgets/dialog_filter_widget.dart';
import 'package:manga_reader/presentation/pages/history/history_page.dart';
import 'package:manga_reader/presentation/pages/home/widgets/bottom_navigation_bar_widget.dart';
import 'package:manga_reader/presentation/pages/search/search_page.dart';
import 'package:manga_reader/presentation/global_widgets/aglobal_widgets.dart';
import 'package:manga_reader/presentation/pages/settings/widgets/bottom_modal_options_settings_widget.dart';


class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex = 0;


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {

    List<BottomNavigationBarItem> items = [
      BottomNavigationBarItem(
        icon: Icon(Icons.home_rounded),
        label: 'Home',  
        backgroundColor: Color(4278192148)
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.history_rounded),
        label: 'History',
        backgroundColor: Color(4278192148) 
      ),
      // BottomNavigationBarItem(
      //   icon: Icon(Icons.person_rounded),
      //   label: 'Profile',
      //   backgroundColor: Color(4278192148) 
      // ),
      BottomNavigationBarItem(
        icon: Icon(Icons.download_rounded),
        label: 'Download',
        backgroundColor: Color(4278192148) 
      ),
    ];
    

    


    return Scaffold(
      appBar: AppBar(
        title: TitlePageWidget(padding: null, titlePage: items.elementAt(_selectedIndex).label,),
        backgroundColor: Colors.transparent,
        actions: [
          IconButtonWidget(icon: Icons.search_rounded, onTap: (){ showSearch(context: context, delegate: SearchPage()); }, ),
          
          IconButtonWidget(icon: Icons.filter_list_rounded, onTap: (){ 
            Navigator.of(context).push(PageRouteBuilder(
              opaque: true,
              pageBuilder: (BuildContext context, _, __) => BuildDialogFilterWidget(),
            ));
           },
          ),

          IconButtonWidget(icon: Icons.more_vert_rounded, onTap: (){
              showBottomModalCustomWidget(context, widget: BottomModalOptionsSettingsWidget() );
          },),
          
        ],
      ),
      body: _widgetBody(),
      extendBody: true,
      bottomNavigationBar: BuildContainerBNBWidget(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color(4278192148),  
          elevation: 10.0,                                              
          items: items,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),     
      ),
    );
  }



  Widget? _widgetBody(){

    switch (_selectedIndex) {
      
      case 0: return ExplorerPage();

      case 1: return HistoryPage();

      // case 2: return ProfilePage();

      case 2: return DownloadPage();

      default: return ExplorerPage();
    }

  }
}