import 'package:flutter/material.dart';
import 'package:manga_reader/presentation/global_widgets/aglobal_widgets.dart';
import 'package:sizer/sizer.dart';

class ListTileChapters extends StatefulWidget {
  ListTileChapters({Key? key}) : super(key: key);

  @override
  _ListTileChaptersState createState() => _ListTileChaptersState();
}

class _ListTileChaptersState extends State<ListTileChapters> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.h,
      child: ListView.builder(
        padding: const EdgeInsets.only(bottom: 30),
        itemCount: 30,
        itemBuilder: (context, index) {
          return ListTilesWidget(title: 'Chapter ${index+1}', icon: Icons.book_rounded, onTap: (){
            Navigator.pushNamed(context, '/Reader');
          });   
        },
      ),
    );
  }
}