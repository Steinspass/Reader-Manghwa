import 'package:flutter/material.dart';
import 'package:manga_reader/presentation/pages/explorer/widgets/list_genre_chips_widget.dart';
import 'package:manga_reader/presentation/pages/explorer/widgets/list_poster_widget.dart';
import 'package:sizer/sizer.dart';



class ExplorerPage extends StatefulWidget {
  ExplorerPage({Key? key}) : super(key: key);

  @override
  _ExplorerPageState createState() => _ExplorerPageState();
}

class _ExplorerPageState extends State<ExplorerPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListGenreChipsWidget(length: 12,),
        ListPosterWidget(title: 'Most Popular Manga',),
        SizedBox(height: 2.h,),
        ListPosterWidget(title: 'Most Popular Manwha',),
        SizedBox(height: 2.h,),
        ListPosterWidget(title: 'Most Popular Manhua',),
        SizedBox(height: 2.h,),
        ListPosterWidget(title: 'Most Rated Manga',),
        SizedBox(height: 2.h,),
        ListPosterWidget(title: 'Most Rated Manwha',),
        SizedBox(height: 2.h,),
        ListPosterWidget(title: 'Most Rated Manhua',),
        SizedBox(height: 2.h,),
      ],
    );
  }
}