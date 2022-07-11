import 'package:flutter/material.dart';
import 'package:manga_reader/presentation/global_widgets/text_titles_widget.dart';
import 'package:sizer/sizer.dart';


class ListTilesWidget extends StatefulWidget {
  final String? title;
  // final String? subTitle;
  final Function()? onTap;
  final IconData? icon;
  // final Widget? trailing;
  
  
  ListTilesWidget({
    @required this.title,
    @required this.icon,
    @required this.onTap,
    // this.subTitle,
    // this.trailing
  });

  @override
  _ListTilesWidgetState createState() => _ListTilesWidgetState();
}

class _ListTilesWidgetState extends State<ListTilesWidget> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: widget.onTap!,
      title: MiniTitleWidget(miniTitle: widget.title!, padding: const EdgeInsets.all(0), color: Colors.grey[50], fontSize: 12.sp,),
      // subtitle: widget.subTitle!.isNotEmpty ? MiniTitleWidget(miniTitle: widget.subTitle, padding: const EdgeInsets.all(0), color: Colors.grey[300], fontSize: 12.sp,) : SizedBox.shrink(),
      leading: Icon(widget.icon!, size: 26.0, color: Colors.white,),
      // trailing: widget.trailing ?? SizedBox.shrink(),
    );
  }
}