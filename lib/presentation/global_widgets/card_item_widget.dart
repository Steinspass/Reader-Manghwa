import 'package:flutter/material.dart';
import 'package:manga_reader/presentation/global_widgets/circular_chart_indicator.dart';
import 'package:sizer/sizer.dart';
import 'aglobal_widgets.dart';

class CardItemWidget extends StatefulWidget {

  final Function()? onTap;
  final String? title;
  final String? subtitle;

  CardItemWidget({
    @required this.onTap,
    @required this.title,
    @required this.subtitle,

  });

  @override
  _CardItemWidgetState createState() => _CardItemWidgetState();
}

class _CardItemWidgetState extends State<CardItemWidget> {
  @override
  Widget build(BuildContext context) {
    return CardWidget(
      onTap: widget.onTap,
      height: 12.h,
      padding: const EdgeInsets.symmetric(
        horizontal: 10.0,
        vertical: 4.0
      ),
      widget: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(child: ImagePosterCustomWidget(onTap: (){}, height: 18.h, width: 20.w), flex: 1,),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MiniTitleWidget(miniTitle: widget.title ?? 'Title', padding: const EdgeInsets.all(0), color: Colors.grey[100], fontSize: 12.sp,),
                SizedBox(height: 1.h,),
                MiniTitleWidget(padding: null, miniTitle: widget.subtitle ?? ' Manwha - Seinen - Ended ', color: Colors.grey[500], fontSize: 9.sp,),
              ],
            ), flex: 3,
          ),
          Expanded(child: Align(
            alignment: Alignment.topRight,
            child: CircularChartIndicator(rating: 7.7,),
          ))
        ],
      ),

    );
  }
}