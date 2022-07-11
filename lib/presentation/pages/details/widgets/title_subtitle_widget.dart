import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:manga_reader/presentation/global_widgets/aglobal_widgets.dart';


class TitleAndSubTitle extends StatefulWidget {
  final String? title;
  final String? subtitle;
  TitleAndSubTitle({
    @required this.title,
    @required this.subtitle
  });

  @override
  _TitleAndSubTitleState createState() => _TitleAndSubTitleState();
}

class _TitleAndSubTitleState extends State<TitleAndSubTitle> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MiniTitleWidget(padding: const EdgeInsets.all(0), miniTitle: widget.title ?? 'Title', color: null, fontSize: 14.sp,),
        SizedBox(height: 0.1.h,),
        MiniTitleWidget(padding: const EdgeInsets.all(0), miniTitle: widget.subtitle ?? ' Manwha - Seinen - Ended ', color: Colors.grey[500], fontSize: 9.sp,),
      ],
    );
  }
}