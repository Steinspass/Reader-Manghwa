import 'package:flutter/material.dart';
import 'package:manga_reader/presentation/pages/download/widgets/item_download_widget.dart';
import 'package:manga_reader/presentation/pages/download/widgets/tab_bar_view_download_widget.dart';
import 'package:manga_reader/presentation/global_widgets/aglobal_widgets.dart';

class DownloadPage extends StatefulWidget {
  DownloadPage({Key? key}) : super(key: key);

  @override
  _DownloadPageState createState() => _DownloadPageState();
}

class _DownloadPageState extends State<DownloadPage> with SingleTickerProviderStateMixin {
  

  late TabController _tabController;
  late int _activeTabIndex;
  bool isActiveTab = true;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(vsync: this, length: 2);

    _tabController.addListener(_setActiveTabIndex);
    
  }

  void _setActiveTabIndex() {
  _activeTabIndex = _tabController.index;

  isActiveTab = _activeTabIndex == 0;

  setState(() {});
  }


  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: TabBarWidget(
            tabs: [
              Tab(text: "Downloaded",),
              Tab(text: "Downloading",),
            ], 
            controller: _tabController
          ),
        ),
        Expanded(
          flex: 9,
          child: TabBarView(
            controller: _tabController,
            children: [
              TabBarViewDownloadWidget(isDownload: true,),
              TabBarViewDownloadWidget(isDownload: false,)
            ]
          ),
        )
      ],
    );
  }
}





