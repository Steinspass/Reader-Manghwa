import 'package:flutter/material.dart';
import 'package:manga_reader/presentation/global_widgets/text_titles_widget.dart';
import 'package:sizer/sizer.dart';


class ChipsWidget extends StatefulWidget {

  final String? title;
  final void Function()? onTap;

  ChipsWidget({
    @required this.title,
    @required this.onTap

  });

  @override
  _ChipsWidgetState createState() => _ChipsWidgetState();
}

class _ChipsWidgetState extends State<ChipsWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0),
      child: ActionChip(
        label: MiniTitleWidget(miniTitle: widget.title, padding: EdgeInsets.all(0), color: Colors.grey[200], fontSize: 10.sp,), 
        onPressed: widget.onTap ?? (){},
        elevation: 1.0,
        labelPadding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 6.0),
        backgroundColor: Color(4279902248),
      ),
    );
  }
}