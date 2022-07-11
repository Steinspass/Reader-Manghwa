import 'package:flutter/material.dart';
import 'package:manga_reader/presentation/global_widgets/text_titles_widget.dart';
import 'package:sizer/sizer.dart';


class TextInfoWidget extends StatefulWidget {

  final String? label;
  final String? text;

  TextInfoWidget({
    @required this.label,
    @required this.text
  });

  @override
  _TextInfoWidgetState createState() => _TextInfoWidgetState();
}

class _TextInfoWidgetState extends State<TextInfoWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        MiniTitleWidget(miniTitle: widget.label , padding: null, color: Colors.grey[500], fontSize: 10.sp,),
        SizedBox(height: 0.5.h,),
        MiniTitleWidget(miniTitle: widget.text , padding: null, color: Colors.grey[50], fontSize: 10.sp,),
      ],
    );
  }
}