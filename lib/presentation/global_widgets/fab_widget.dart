import 'package:flutter/material.dart';
import 'package:manga_reader/presentation/global_widgets/text_titles_widget.dart';


class FabWidget extends StatefulWidget {
  final Function()? onTap;
  final IconData? icon;

  FabWidget({
    @required this.onTap,
    @required this.icon
  });

  @override
  _FabWidgetState createState() => _FabWidgetState();
}

class _FabWidgetState extends State<FabWidget> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: widget.onTap,
      elevation: 1.0,
      backgroundColor: Color(4278197565),
      child: Icon(
        widget.icon ?? Icons.add_alert_rounded,
        color: Color(4294956554),
        size: 30.0,
      ),
    );
  }
}





//* Fab Extended


class FabExtendedWidget extends StatefulWidget {

  final String? title;
  final bool? isScrolling;
  final Function()? onTap;
  final IconData? icon;

  FabExtendedWidget({
    @required this.title,
    @required this.icon,
    @required this.onTap,
    @required this.isScrolling
  });

  @override
  _FabExtendedWidgetState createState() => _FabExtendedWidgetState();
}

class _FabExtendedWidgetState extends State<FabExtendedWidget> {
  @override
  Widget build(BuildContext context) {
    
    return FloatingActionButton.extended(
      isExtended: widget.isScrolling ?? false,
      elevation: 1.0,
      backgroundColor: Colors.grey[50],
      onPressed: widget.onTap,
      label: AnimatedSwitcher(
        duration: Duration(milliseconds: 400),
        transitionBuilder: (Widget child, Animation<double> animation) =>
        FadeTransition(
          opacity: animation,
          child: SizeTransition(
            child: child,
            sizeFactor: animation,
            axis: Axis.horizontal,
          ),
        ) ,
        child: widget.isScrolling ?? false 
        ? Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 1.0),
              child: Icon(
                widget.icon ?? Icons.add_circle,
                size: 24,
                color: Color(4278192148),
                ),
            ),
            ButtonTitleWidget(buttonTitle: widget.title, padding: EdgeInsets.all(0), colorText: Color(4278192148))
          ],
        )
        : 
         Icon(
          widget.icon ?? Icons.add,
          size: 28,
          color: Color(4278192148),
        ) ,
      )
    );

  }

  
}