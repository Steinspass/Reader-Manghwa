import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:manga_reader/presentation/global_widgets/aglobal_widgets.dart';


class ItemHistoryWidget extends StatefulWidget {
  
  final String? title;
  final String? episode;
  final String? page;
  final Function()? onTap;

  ItemHistoryWidget({
    @required this.title,
    @required this.episode,
    @required this.page,
    @required this.onTap
  });

  @override
  _ItemHistoryWidgetState createState() => _ItemHistoryWidgetState();
}

class _ItemHistoryWidgetState extends State<ItemHistoryWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CardWidget(
        onTap: widget.onTap,
        height: 12.h,
        padding: const EdgeInsets.symmetric(
          horizontal: 12.0,
          vertical: 6.0
        ),
        widget: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(child: ImagePosterCustomWidget(onTap: (){
              Navigator.pushNamed(context, '/Reader');
            }, height: 18.h, width: 20.w), flex: 1,),
            Expanded(
              child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MiniTitleWidget(miniTitle: widget.title ?? 'Title', padding: const EdgeInsets.all(0), color: Colors.grey[100], fontSize: 12.sp,),
                SizedBox(height: 1.h,),
                MiniTitleWidget(miniTitle: widget.episode ?? 'cap. ???/???', padding: const EdgeInsets.all(0), color: Colors.grey[400], fontSize: 10.sp,),
                SizedBox(height: 1.h,),
                MiniTitleWidget(miniTitle: widget.page ?? 'pag. ??/??', padding: const EdgeInsets.all(0), color: Colors.grey[400], fontSize: 9.sp,),
              ],
            ), flex: 3,
            ),
            Expanded(
              child: Icon(Icons.chevron_right_rounded, color: Color(4294956554), size: 30,),
              flex: 1,
            )
          ],
        ),
      ),
    );
  }
}