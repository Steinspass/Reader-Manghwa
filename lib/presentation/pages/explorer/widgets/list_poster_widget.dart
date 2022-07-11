import 'package:flutter/material.dart';
import 'package:manga_reader/presentation/global_widgets/aglobal_widgets.dart';
import 'package:sizer/sizer.dart';


class ListPosterWidget extends StatefulWidget {

  final String? title;


  ListPosterWidget({@required this.title});

  @override
  _ListPosterWidgetState createState() => _ListPosterWidgetState();
}

class _ListPosterWidgetState extends State<ListPosterWidget> {
  
  
  final List<String> listTitle = [
    'One Piece',
    'Kingdom',
    'Gintama',
    'Hajime no Ippo',
    'Boku no hero',
    'Chainsaw Man',
    'Kimetsu no Yaiba',
    'Tokyo Revengers',
    'Jujutsu Kaisen',
    'One Punch Man',
    'Berserk',
    '20th Century Boys',
    'Shigenki no Kyojin'
  ];
  
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25.h,
      margin: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 2.0),
      child: Column(
        children: [
          ListTile(
            title: TitleWidget(padding: EdgeInsets.only(left: 4), title: widget.title ?? 'Most Popular Manga'), 
            trailing: MiniTitleWidget(miniTitle: 'More', color: Color(4294956554), padding: null, fontSize: 10.sp, ),
            onTap: (){
              Navigator.pushNamed(context, '/Filter');
            },
          ),
          SizedBox(height: 2.h,),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: listTitle.length,
              itemExtent: 90,
              itemBuilder: (context, i) => PosterItemWidget(title: listTitle[i],),
            ),
          ),
          
        ],
      ),
    );
  }
}



class PosterItemWidget extends StatefulWidget {

  final String? title;
  
  PosterItemWidget({
    @required this.title
  });

  @override
  _PosterItemWidgetState createState() => _PosterItemWidgetState();
}

class _PosterItemWidgetState extends State<PosterItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 18.h,
      padding: const EdgeInsets.only(right: 10.0, left: 10.0),
      child: GestureDetector(
        onTap: (){
          Navigator.pushNamed(context, '/Details');
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ImagePosterSmallWidget(onTap: (){  }),
            SizedBox(height: 1.h,),
            MiniTitleWidget(miniTitle: widget.title, padding: EdgeInsets.all(1), color: Colors.grey[100], fontSize: 10.sp,),
            
          ],
        ),
      ),
    );
  }
}   