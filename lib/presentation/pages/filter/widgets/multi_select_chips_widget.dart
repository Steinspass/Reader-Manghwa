import 'package:flutter/material.dart';
import 'package:manga_reader/presentation/global_widgets/aglobal_widgets.dart';
import 'package:sizer/sizer.dart';

class MultiSelectChipsWidget extends StatefulWidget {
  
  final List<String>? list;
  final Function(String)? selectedItem;

  MultiSelectChipsWidget({
    @required this.list,
    @required this.selectedItem
  });

  @override
  _MultiSelectChipsWidgetState createState() => _MultiSelectChipsWidgetState();
}

class _MultiSelectChipsWidgetState extends State<MultiSelectChipsWidget> with AutomaticKeepAliveClientMixin {
  

  List<String> listItemSelected = [];

  List<bool> listSelect = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];

  
  List<Widget> _buildChoiceList(){
    
    List<Widget> choices = [];

    

    

    for (var i = 0; i < widget.list!.length; i++) {
      
      choices.add(
        FilterChip(
          label:MiniTitleWidget(
            miniTitle: widget.list![i], 
            padding: EdgeInsets.all(0), 
            color: listSelect[i] == true ? Color(4279902248) : Colors.grey[100], 
            fontSize: 10.sp,
          ),
          backgroundColor: Color(4279902248),
          selectedColor: Colors.grey[50], 
          selected: listSelect[i],
          checkmarkColor: listSelect[i] == true ? Color(4279902248) : Colors.grey[100],
          elevation: 1.0,
          onSelected: (value) {
            setState(() {

              bool isSelect = listSelect[i] = value;
              if(!isSelect){
                listItemSelected.removeWhere((item) => item == widget.list![i]);
              }else{
                listItemSelected.add(widget.list![i]);
              }

              String selected = listItemSelected.join(",");

              widget.selectedItem!(selected);

            });
          },
        )
      );

    }

    return choices;
    
  }
  
  
  @override
  Widget build(BuildContext context) {
     super.build(context);
     
     return Padding(
       padding: const EdgeInsets.all(10.0),
       child: Wrap(
        alignment: WrapAlignment.spaceEvenly,
        spacing: 8.0,
        runSpacing: 8.0,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: _buildChoiceList(),
    ),
     );

  }

  @override
  bool get wantKeepAlive => true;

}