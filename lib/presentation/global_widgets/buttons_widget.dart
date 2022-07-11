import 'package:flutter/material.dart';
import 'package:manga_reader/presentation/global_widgets/text_titles_widget.dart';


///? All Principal Buttons Widget for most of cases



///* Rounded Button Widget
class RoundedButtonWidget extends StatefulWidget {
  final String? text;
  final Function()? onTap;
  
  
  RoundedButtonWidget({
    @required this.onTap,
    @required this.text
  });

  @override
  _RoundedButtonWidgetState createState() => _RoundedButtonWidgetState();
}

class _RoundedButtonWidgetState extends State<RoundedButtonWidget> {
  
  
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onTap,
      child: ButtonTitleWidget(
        padding: EdgeInsets.all(5),
        buttonTitle: widget.text ?? 'Click me',
        colorText: Color(4278197565),
      ),
    );
  }
}


///* Border Button Widget
class BorderButtonWidget extends StatefulWidget {
  final String? text;
  final Function()? onTap;
  
  
  BorderButtonWidget({
    @required this.onTap,
    @required this.text
  });

  @override
  _BorderButtonWidgetState createState() => _BorderButtonWidgetState();
}


class _BorderButtonWidgetState extends State<BorderButtonWidget> {
  
  
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: widget.onTap,
      child: ButtonTitleWidget(
        padding: EdgeInsets.all(5),
        buttonTitle: widget.text ?? 'Click me',
        colorText: Color(4294951680),
      ),
    );
  }
}




class IconButtonWidget extends StatefulWidget {

  final IconData? icon;
  final Function()? onTap;

  IconButtonWidget({
    @required this.icon,
    @required this.onTap
  });

  @override
  _IconButtonWidgetState createState() => _IconButtonWidgetState();
}

class _IconButtonWidgetState extends State<IconButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        widget.icon,
        size: 26.0,
        color: Colors.white,
      ), 
      onPressed: widget.onTap
    );
  }
}