import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:manga_reader/presentation/global_widgets/aglobal_widgets.dart';


class ItemDownloadWidget extends StatefulWidget {
  
  final String? title;
  final String? episode;
  final String? page;
  final bool? isDownloaded;
  final Function()? onTap;

  ItemDownloadWidget({
    @required this.title,
    @required this.episode,
    @required this.page,
    @required this.isDownloaded,
    @required this.onTap
  });

  @override
  _ItemDownloadWidgetState createState() => _ItemDownloadWidgetState();
}

class _ItemDownloadWidgetState extends State<ItemDownloadWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CardWidget(
        onTap: widget.onTap,
        height: 12.h,
        padding: const EdgeInsets.symmetric(
          horizontal: 12.0,
          vertical: 8.0
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
                MiniTitleWidget(miniTitle: widget.episode ?? 'cap. ???/???', padding: const EdgeInsets.all(0), color: Colors.grey[400], fontSize: 10.sp,),
                SizedBox(height: 1.h,),
                MiniTitleWidget(miniTitle: widget.page ?? 'pag. ??/??', padding: const EdgeInsets.all(0), color: Colors.grey[400], fontSize: 9.sp,),
              ],
            ), flex: 3,
            ),
            Expanded(
              child: Icon(
                widget.isDownloaded ?? false 
                ? Icons.download_done_rounded
                : Icons.download_rounded, 
                color: Color(4294956554), 
                size: 22,
              ),
              flex: 1,
            )
          ],
        ),
      ),
    );
  }
}