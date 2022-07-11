import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:manga_reader/presentation/pages/details/widgets/text_info_widget.dart';


class RowInfoTextWidget extends StatefulWidget {
  RowInfoTextWidget({Key? key}) : super(key: key);

  @override
  _RowInfoTextWidgetState createState() => _RowInfoTextWidgetState();
}

class _RowInfoTextWidgetState extends State<RowInfoTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Spacer(),
        TextInfoWidget(
          label: 'Launch Year',
          text: '1997',
        ),
        SizedBox(width: 5.0.w,),
        TextInfoWidget(
          label: 'Author',
          text: 'Oda Eiichiro',
        ),
        SizedBox(width: 5.0.w,),
        TextInfoWidget(
          label: 'Chapters',
          text: '1024',
        ),
        Spacer()
      ],
    );
  }
}