import 'package:flutter/material.dart';
import 'package:manga_reader/presentation/global_widgets/aglobal_widgets.dart';
import 'package:sizer/sizer.dart';


class ListGenresDetailsWidget extends StatefulWidget {
  ListGenresDetailsWidget({Key? key}) : super(key: key);

  @override
  _ListGenresDetailsWidgetState createState() => _ListGenresDetailsWidgetState();
}

class _ListGenresDetailsWidgetState extends State<ListGenresDetailsWidget> {
  
  final List<String> listGenre = [
    'Action',
    'Adventure',
    'Thiller',
  ];
  
  @override
  Widget build(BuildContext context) {
     return Container(
      height: 8.h,
      margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 30.0),
      child: Center(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: listGenre.length,
          itemBuilder: (context, i) =>  ChipsWidget(title: listGenre[i], onTap: (){ print("Selected genre ${listGenre[i]}"); }),
        ),
      ),
    );
  }
}