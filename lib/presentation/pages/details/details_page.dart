import 'package:flutter/material.dart';
import 'package:manga_reader/presentation/global_widgets/fab_widget.dart';
import 'package:manga_reader/presentation/pages/details/widgets/body_details_widget.dart';
import 'package:manga_reader/presentation/pages/details/widgets/sliver_app_bar.dart';
import 'package:sizer/sizer.dart';


class DetailsPage extends StatefulWidget {
  DetailsPage({Key? key}) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  
  late ScrollController _scrollViewController;

  @override
  void initState() { 
    super.initState();
     _scrollViewController = new ScrollController();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: _scrollViewController,
        physics: const BouncingScrollPhysics(),
        slivers: [
          BuildSliverAppBarWidget(innerBoxIsScrolled: false,),
          SliverFillRemaining(
            fillOverscroll: false,
            hasScrollBody: true,
            child: BuildBottomBody()
          ),
        ],
      ),

      floatingActionButton: FabExtendedWidget( onTap: (){}, icon: Icons.menu_book_rounded, title: 'Read', isScrolling: true, ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}