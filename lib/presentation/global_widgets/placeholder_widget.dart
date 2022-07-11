import 'package:flutter/material.dart';
import 'package:manga_reader/presentation/global_widgets/text_titles_widget.dart';
import 'package:sizer/sizer.dart';


class PlaceholderErrorWidget extends StatefulWidget {

  final String? text;
  final IconData? icon;

  PlaceholderErrorWidget({
    @required this.text,
    @required this.icon
  });

  @override
  _PlaceholderErrorWidgetState createState() => _PlaceholderErrorWidgetState();
}

class _PlaceholderErrorWidgetState extends State<PlaceholderErrorWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            widget.icon ?? Icons.cancel_presentation_rounded,
            color: Colors.blueGrey[800],
            size: 55,
          ),
          MiniTitleWidget(miniTitle: widget.text ?? 'Unexpected Error', padding: null, color: Colors.blueGrey[800], fontSize: 14.sp, ),
        ],
      ),
    );
  }
}