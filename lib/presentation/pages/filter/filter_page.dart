import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:manga_reader/presentation/global_widgets/aglobal_widgets.dart';


class FilterPage extends StatefulWidget {

  FilterPage({Key? key}) : super(key: key);

  @override
  _FilterPageState createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {


  final List<String> listTitle = [
    'One Piece',
    'Kingdom',
    'Gintama',
    'Hajime no Ippo',
    'Boku no hero',
    'Chainsaw Man',
    'Kimetsu no Yaiba',
    'Tokyo Revengers',
    'Jujutsu Kaisen',
    'One Punch Man',
    'Berserk',
    '20th Century Boys',
    'Shigenki no Kyojin'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: MiniTitleWidget(miniTitle: 'Filter', padding: const EdgeInsets.all(0), color: Colors.grey[100], fontSize: 16.sp,),
        leading: IconButtonWidget(icon: Icons.chevron_left_rounded, onTap: () => Navigator.pop(context)),
      ),

      body: Container(
      child: ListView.builder(
        padding: const EdgeInsets.all(2.0),
        itemBuilder: (context, index) => CardItemWidget( title: listTitle[index], subtitle: null, onTap: (){ Navigator.pushNamed(context, '/Details'); }, ),
        itemCount: listTitle.length,
        ),
      ),
    );
  }
}