import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:manga_reader/presentation/global_widgets/aglobal_widgets.dart';
import 'package:manga_reader/presentation/global_widgets/image_poster_widget.dart';


class SuggestionsWidget extends StatefulWidget {
  final String? title;
  final int? totalList;
  SuggestionsWidget({
    @required this.title,
    @required this.totalList
  });

  @override
  _SuggestionsWidgetState createState() => _SuggestionsWidgetState();
}

class _SuggestionsWidgetState extends State<SuggestionsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        padding: const EdgeInsets.all(2.0),
        itemBuilder: (context, index) => GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, '/Details');
          },
          child: SizedBox(
            height: 8.h,
            width: 85.w,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ImagePosterSmallWidget(onTap: null,),
                Spacer(),
                MiniTitleWidget(miniTitle: widget.title ?? 'Title', padding: const EdgeInsets.all(0), color: Colors.grey[100], fontSize: 12.sp,),
                Spacer(),
                // MiniTitleWidget(miniTitle: 'index $index', padding: const EdgeInsets.all(0), color: Colors.grey[400], fontSize: 10.sp,),
              ],
            )
          ),
        ),
        itemCount: widget.totalList,
      ),
    );
  }
}