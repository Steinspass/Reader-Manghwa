import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:manga_reader/presentation/global_widgets/aglobal_widgets.dart';


class ListTileOrderChapterWidget extends StatefulWidget {
  ListTileOrderChapterWidget({Key? key}) : super(key: key);

  @override
  _ListTileOrderChapterWidgetState createState() => _ListTileOrderChapterWidgetState();
}

class _ListTileOrderChapterWidgetState extends State<ListTileOrderChapterWidget> {
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          MiniTitleWidget(miniTitle: "Chapters", padding: const EdgeInsets.all(0), color: Colors.grey[50]),
          Spacer(),
          IconButtonWidget(icon: Icons.sort_rounded, onTap: (){
            showBottomModalCustomWidget(
              context, 
              widget: SizedBox(
                height: 12.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ListTilesWidget(title: 'Sort from the last chapter', icon: Icons.trending_up_rounded, onTap: (){}),
                    ListTilesWidget(title: 'Sort from the first chapter', icon: Icons.trending_down_rounded, onTap: (){})
                  ],
                ),
              )  
            );
          }),
          SizedBox(width: 0.5.w,),
          Icon(Icons.download_rounded, size: 24.0, color: Colors.white,),
        ],
      ),
    );

    
  }
}