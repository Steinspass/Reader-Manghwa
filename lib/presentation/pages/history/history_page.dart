import 'package:flutter/material.dart';
import 'package:manga_reader/presentation/pages/history/widgets/item_history_widget.dart';
import 'package:manga_reader/presentation/global_widgets/aglobal_widgets.dart';
import 'package:sticky_infinite_list/sticky_infinite_list.dart';




class HistoryPage extends StatefulWidget {
  HistoryPage();

  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {

  // final GlobalKey globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {

    final List<Widget> _listOne = [
      ItemHistoryWidget(title: 'One Piece', episode: 'Ep. 1003/1023', page: 'Pag. 7/18', onTap: (){},),
      ItemHistoryWidget(title: 'Solo Leveling', episode: 'Ep. 103/123', page: 'Pag. 5/21', onTap: (){},),
      ItemHistoryWidget(title: 'Kingdom', episode: 'Ep. 503/627', page: 'Pag. 1/18', onTap: (){},),
      ItemHistoryWidget(title: '20th Century Boys', episode: 'Ep. 203/223', page: 'Pag. 1/18', onTap: (){},),
      ItemHistoryWidget(title: 'Boku no Hero', episode: 'Ep. 167/243', page: 'Pag. 15/18', onTap: (){},),
      ItemHistoryWidget(title: 'Sweet Home', episode: 'Ep. 107/223', page: 'Pag. 4/28', onTap: (){},),
      ItemHistoryWidget(title: 'Vinland Saga', episode: 'Ep. 190/191', page: 'Pag. 1/18', onTap: (){},),
      ItemHistoryWidget(title: 'Tower of God', episode: 'Ep. 357/495', page: 'Pag. 1/25', onTap: (){},),
      ItemHistoryWidget(title: 'Wind Breaker', episode: 'Ep. 346/347', page: 'Pag. 1/18', onTap: (){},),
      ItemHistoryWidget(title: 'Monster', episode: 'Ep. 103/180', page: 'Pag. 1/25', onTap: (){},),
      ItemHistoryWidget(title: 'Berserk', episode: 'Ep. 307/347', page: 'Pag. 1/18', onTap: (){},)
    ];

    


    return InfiniteList(
      posChildCount: _listOne.length,
      builder: (context, index) {
        return InfiniteListItem(
          
          headerStateBuilder: (BuildContext context, StickyState<int> state){
            return MiniTitleWidget(miniTitle: '$index Days Ago', padding: const EdgeInsets.only(top: 15, left: 30), color: Colors.grey[100]);
          },
          
          contentBuilder: (BuildContext context){
              return _listOne[index];
          },
          minOffsetProvider: (StickyState<int> state) => 40,

        );
      },
    );



    
  }
}