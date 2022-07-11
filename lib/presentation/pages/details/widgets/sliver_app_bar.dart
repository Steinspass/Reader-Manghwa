import 'package:flutter/material.dart';
import 'package:manga_reader/presentation/global_widgets/circular_chart_indicator.dart';
import 'package:manga_reader/presentation/pages/details/widgets/title_subtitle_widget.dart';
import 'package:sizer/sizer.dart';
import 'package:manga_reader/presentation/global_widgets/aglobal_widgets.dart';



class BuildSliverAppBarWidget extends StatefulWidget {
  final bool? innerBoxIsScrolled;
  BuildSliverAppBarWidget({
    @required this.innerBoxIsScrolled
  });

  @override
  _BuildSliverAppBarWidgetState createState() => _BuildSliverAppBarWidgetState();
}

class _BuildSliverAppBarWidgetState extends State<BuildSliverAppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
        // forceElevated: widget.innerBoxIsScrolled!,
        leading: IconButtonWidget(icon: Icons.chevron_left_rounded, onTap: () => Navigator.pop(context)),
        actions: [
          CircularChartIndicator(rating: 7.8,),
        ],
        backgroundColor: Color(4278192148),
        pinned: true,
        stretch: true,
        floating: false,
        elevation: 10.0,
        expandedHeight: 35.h,
        collapsedHeight: 8.h,
        flexibleSpace: FlexibleSpaceBar( 
          stretchModes: <StretchMode>[
            StretchMode.zoomBackground,
          ],
          collapseMode: CollapseMode.parallax,
          background: ImagePosterCustomWidget(height: 35.h, width: 100.w, onTap: (){},),
          centerTitle: true,
          
          title: TitleAndSubTitle(title: null, subtitle: null,),      
        ),  

    );

  }
}