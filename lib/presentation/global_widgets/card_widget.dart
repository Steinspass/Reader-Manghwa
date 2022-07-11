import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';



class CardWidget extends StatefulWidget {

  final double? height;
  final Widget? widget;
  final EdgeInsetsGeometry? padding;
  final Function()? onTap;

  CardWidget({
    @required this.height,
    @required this.padding,
    @required this.widget,
    @required this.onTap
  });

  @override
  _CardWidgetState createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding ?? const EdgeInsets.symmetric(
        horizontal: 18.0,
        vertical: 18.0
      ),
      child: GestureDetector(
        onTap: widget.onTap ?? (){},
        child: Card(
          elevation: 15.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Container(   
              child: widget.widget ?? Placeholder(),
              height: widget.height ?? 30.h,
              width: 90.w,
            ),
        ),
      ),
    );
  }
}