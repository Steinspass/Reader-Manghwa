import 'package:flutter/material.dart';
import 'package:manga_reader/presentation/global_widgets/aglobal_widgets.dart';
import 'package:manga_reader/presentation/pages/details/widgets/list_genres_widget.dart';
import 'package:manga_reader/presentation/pages/details/widgets/list_tile_chapters_widget.dart';
import 'package:manga_reader/presentation/pages/details/widgets/list_tile_order_chapter.dart';
import 'package:manga_reader/presentation/pages/details/widgets/row_info_text_widget.dart';
import 'package:sizer/sizer.dart';

class BuildBottomBody extends StatefulWidget {
  BuildBottomBody({Key? key}) : super(key: key);

  @override
  _BuildBottomBodyState createState() => _BuildBottomBodyState();
}

class _BuildBottomBodyState extends State<BuildBottomBody> {
  @override
  Widget build(BuildContext context) {

    // return SliverList(
    //   delegate: SliverChildListDelegate(
    //     [
    //       ListGenresDetailsWidget(),
    //       TextDescReadMoreWidget(descText:'Cillum id ad in nisi dolor eiusmod exercitation elit velit cupidatat labore. Id fugiat elit cupidatat pariatur anim officia consectetur ex do. Et amet consectetur sunt qui cupidatat quis deserunt duis deserunt. Et amet consectetur sunt qui cupidatat quis deserunt duis deserunt.')
    //     ],
    //   ),
    // );


    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 12.h,),
          RowInfoTextWidget(),
          TextDescReadMoreWidget(descText:'Cillum id ad in nisi dolor eiusmod exercitation elit velit cupidatat labore. Id fugiat elit cupidatat pariatur anim officia consectetur ex do. Et amet consectetur sunt qui cupidatat quis deserunt duis deserunt. Et amet consectetur sunt qui cupidatat quis deserunt duis deserunt.'),
          ListGenresDetailsWidget(),
          ListTileOrderChapterWidget(),
          ListTileChapters(),
          
        ],
      ),
    );
  }
}