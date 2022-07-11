import 'package:flutter/material.dart';
import 'package:manga_reader/presentation/global_widgets/aglobal_widgets.dart';
import 'package:sizer/sizer.dart';

class ListGenreChipsWidget extends StatefulWidget {
  final int? length;
  ListGenreChipsWidget({
    @required this.length
  });

  @override
  _ListGenreChipsWidgetState createState() => _ListGenreChipsWidgetState();
}

class _ListGenreChipsWidgetState extends State<ListGenreChipsWidget> {


  final List<String> listGenre = [
    'Action',
    'Adventure',
    'Thiller',
    'Comedy',
    'Romance',
    'Mecha',
    'School Life',
    'Military',
    'Ciberpunk',
    'Survival',
    'Mistery',
    'Gore',
    'War'
  ];



  @override
  Widget build(BuildContext context) {
    
    return Container(
      height: 10.h,
      margin: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 4.0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.length,
        itemBuilder: (context, i) =>  ChipsWidget(title: listGenre[i], onTap: (){ print("Selected genre ${listGenre[i]}"); }),
      ),
    );

  }
}