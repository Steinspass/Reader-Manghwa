import 'package:flutter/material.dart';
import 'package:manga_reader/presentation/global_widgets/aglobal_widgets.dart';


class ResultsWidget extends StatefulWidget {
  final String? title;
  final int? totalList;
  ResultsWidget({
    @required this.title,
    @required this.totalList
  });

  @override
  _ResultsWidgetState createState() => _ResultsWidgetState();
}

class _ResultsWidgetState extends State<ResultsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        padding: const EdgeInsets.all(2.0),
        itemBuilder: (context, index) => CardItemWidget( title: widget.title ?? 'Title', subtitle: null, onTap: (){ Navigator.pushNamed(context, '/Details'); }, ),
        itemCount: widget.totalList,
      ),
    );
  }
}