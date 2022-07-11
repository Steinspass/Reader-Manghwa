import 'package:flutter/material.dart';
import 'package:manga_reader/presentation/global_widgets/aglobal_widgets.dart';
import 'package:sizer/sizer.dart';


class BuildListPagesReadWidget extends StatefulWidget {

  final ScrollController? hideButtonController;

  BuildListPagesReadWidget({
    @required this.hideButtonController
  });

  @override
  _BuildListPagesReadWidgetState createState() => _BuildListPagesReadWidgetState();
}

class _BuildListPagesReadWidgetState extends State<BuildListPagesReadWidget> {
  @override
  Widget build(BuildContext context) {
    
    final List<Color> listColors = [
      Colors.blueAccent[100]!,
      Colors.cyanAccent[100]!,
      Colors.amberAccent[100]!,
      Colors.deepOrangeAccent[100]!,
      Colors.deepPurpleAccent[100]!,
      Colors.redAccent[100]!,
      Colors.pinkAccent[100]!,
      Colors.blueAccent[100]!,
      Colors.cyanAccent[100]!,
      Colors.amberAccent[100]!,
      Colors.deepOrangeAccent[100]!,
      Colors.deepPurpleAccent[100]!,
      Colors.redAccent[100]!,
      Colors.pinkAccent[100]!,
      Colors.blueAccent[100]!,
      Colors.cyanAccent[100]!,
      Colors.amberAccent[100]!,
      Colors.deepOrangeAccent[100]!,
      Colors.deepPurpleAccent[100]!,
      Colors.redAccent[100]!,
      Colors.pinkAccent[100]!,
      Colors.deepPurpleAccent[100]!,
      Colors.redAccent[100]!,
      Colors.pinkAccent[100]!,
    ];


    return ListView.builder(
      controller: widget.hideButtonController,
      shrinkWrap: true,
      itemCount: 21,
      itemBuilder: (context, index) {
         return Container(
            color: listColors[index],
            height: 110.h,
            width: 100.h,
            child: Center(
              child: MiniTitleWidget(miniTitle: 'Page ${index+1}', padding: const EdgeInsets.all(0), color: Colors.blueGrey[900]),
            ),
         );     
      },
      
    );
  }
}