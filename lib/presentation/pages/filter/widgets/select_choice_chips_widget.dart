import 'package:flutter/material.dart';
import 'package:manga_reader/presentation/global_widgets/aglobal_widgets.dart';
import 'package:sizer/sizer.dart';


class BuildSelectChoice extends StatefulWidget {

  final List<String>? listType;
  final Function(String)? typeSelected;

  
  BuildSelectChoice({
    @required this.listType,
    @required this.typeSelected
  });

  @override
  _BuildSelectChoiceState createState() => _BuildSelectChoiceState();
}

class _BuildSelectChoiceState extends State<BuildSelectChoice> with AutomaticKeepAliveClientMixin {
  
  int selectedIndex = -1;
  

  List<Widget> _buildChoiceList(){
    
    List<Widget> choices = [];

    for (var i = 0; i < widget.listType!.length; i++) {
      
      choices.add(
        ChoiceChip(
          label: MiniTitleWidget(
            miniTitle: widget.listType![i], 
            padding: EdgeInsets.all(0), 
            color: selectedIndex == i ? Color(4279902248) : Colors.grey[100], 
            fontSize: 10.sp,
          ),
          labelPadding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 6.0),
          selected: selectedIndex == i,
          elevation: 1.0,
          backgroundColor: Color(4279902248),
          selectedColor: Colors.grey[50],
          
          onSelected: (value) {
            setState(() {

              selectedIndex = value ? i : -1;

              

              widget.typeSelected!(widget.listType![selectedIndex]);

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
      padding: const EdgeInsets.all(8.0),
      child: Wrap(
        alignment: WrapAlignment.spaceEvenly,
        spacing: 8.0,
        runSpacing: 8.0,
        crossAxisAlignment: WrapCrossAlignment.center,
        direction: Axis.horizontal,
        children: _buildChoiceList()
      ),
    );
  }


  @override
  bool get wantKeepAlive => true;

}