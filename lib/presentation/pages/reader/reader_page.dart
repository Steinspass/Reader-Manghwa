import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:manga_reader/presentation/global_widgets/aglobal_widgets.dart';
import 'package:manga_reader/presentation/pages/reader/widgets/bottom_nav_transparent_widget.dart';
import 'package:manga_reader/presentation/pages/reader/widgets/list_pages_read_widget.dart';
import 'package:sizer/sizer.dart';

class ReaderPage extends StatefulWidget {
  ReaderPage({Key? key}) : super(key: key);

  @override
  _ReaderPageState createState() => _ReaderPageState();
}

class _ReaderPageState extends State<ReaderPage> {

  late ScrollController _hideButtonController;

  late bool _isVisible;
  @override
  initState() {
    super.initState();
    _isVisible = true;
    _hideButtonController = new ScrollController();
    _hideButtonController.addListener(() {
      if (_hideButtonController.position.userScrollDirection ==
          ScrollDirection.reverse) {
       if(_isVisible)
        setState(() {
          _isVisible = false;
          print("**** $_isVisible up");
        });
      }
      if (_hideButtonController.position.userScrollDirection ==
          ScrollDirection.forward) {
        if(!_isVisible)
        setState(() {
          _isVisible = true;
          print("**** $_isVisible down");
        });
      }
    });
  }
  
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _isVisible 
      ? AppBar(
        backgroundColor: Color(4278192148).withOpacity(0.4),
        elevation: 0.0,
        title: MiniTitleWidget(miniTitle: 'Reader Page', padding: const EdgeInsets.all(0), color: Colors.grey[100], fontSize: 16.sp,),
        leading: IconButtonWidget(icon: Icons.chevron_left_rounded, onTap: () => Navigator.pop(context)),
      )
      : PreferredSize(
        child: Container(),
        preferredSize: Size(0.0, 0.0),
      ),
      
      backgroundColor: Color(4278192148).withOpacity(0.5),
      body: BuildListPagesReadWidget( hideButtonController: _hideButtonController, ),
      extendBody: true,
      extendBodyBehindAppBar: true,
      bottomNavigationBar: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        // height: _isVisible ? 7.h : 0.0.h,
        child: _isVisible 
        ? BottomNavTransparentWidget()
        : Container(
          color: Colors.white10,
          width: MediaQuery.of(context).size.width,
          height: _isVisible ? 7.h : 0.0.h,
        ),
      )

    );
  }
}