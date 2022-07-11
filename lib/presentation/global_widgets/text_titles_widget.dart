import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:sizer/sizer.dart';


///? All Principal Text Widget for most of cases


///* Title Page Widget
class TitlePageWidget extends StatefulWidget {
  
  final String? titlePage;
  final EdgeInsetsGeometry? padding;
  
  
  TitlePageWidget({
    @required this.titlePage,
    @required this.padding
  });

  @override
  _TitlePageWidgetState createState() => _TitlePageWidgetState();
}

class _TitlePageWidgetState extends State<TitlePageWidget> {
  @override
  Widget build(BuildContext context) {

    

    return Padding(
      padding: widget.padding ?? EdgeInsets.only(left: 4),
      child: Text(
        widget.titlePage ?? 'TitlePage',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20.sp,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }
}



///* Title Widget
class TitleWidget extends StatefulWidget {
  
  final String? title;
  final EdgeInsetsGeometry? padding;
  
  
  TitleWidget({
    @required this.title,
    @required this.padding
  });

  @override
  _TitleWidgetState createState() => _TitleWidgetState();
}

class _TitleWidgetState extends State<TitleWidget> {
  @override
  Widget build(BuildContext context) {

    

    return Padding(
      padding: widget.padding ?? EdgeInsets.only(left: 10),
      child: Text(
        widget.title ?? 'Title',
        style: TextStyle(
          color: Colors.grey[100],
          fontSize: 18.sp,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}




///* SubTitle Widget
class SubTitleWidget extends StatefulWidget {
  
  final String? subtitle;
  final EdgeInsetsGeometry? padding;
  
  
  SubTitleWidget({
    @required this.subtitle,
    @required this.padding
  });

  @override
  _SubTitleWidgetState createState() => _SubTitleWidgetState();
}

class _SubTitleWidgetState extends State<SubTitleWidget> {
  @override
  Widget build(BuildContext context) {

    

    return Padding(
      padding: widget.padding ?? EdgeInsets.only(left: 15),
      child: Text(
        widget.subtitle ?? 'SubTitle',
        style: TextStyle(
          color: Colors.grey[200],
          fontSize: 16.sp,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}




///* Mini Title
class MiniTitleWidget extends StatefulWidget {
  
  final String? miniTitle;
  final EdgeInsetsGeometry? padding;
  final Color? color;
  final double? fontSize;
  final Shadow? shadow;
  
  
  MiniTitleWidget({
    @required this.miniTitle,
    @required this.padding,
    @required this.color,
    this.fontSize,
    this.shadow
  });

  @override
  _MiniTitleWidgetState createState() => _MiniTitleWidgetState();
}

class _MiniTitleWidgetState extends State<MiniTitleWidget> {
  @override
  Widget build(BuildContext context) {

    

    return Padding(
      padding: widget.padding ?? EdgeInsets.only(left: 10),
      child: Text(
        widget.miniTitle ?? 'MiniTitle',
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          color: widget.color ?? Colors.white,
          fontSize: widget.fontSize ?? 16.sp,
          fontWeight: FontWeight.w700,
          shadows: [widget.shadow ?? Shadow()]
        ),
      ),
    );
  }
}



///* Text Button with GestureDetector
class TextButtonWidget extends StatefulWidget {
  
  final String? textButton;
  final EdgeInsetsGeometry? padding;
  final Function()? onTap;
  
  TextButtonWidget({
    @required this.textButton,
    @required this.padding,
    @required this.onTap
  });

  @override
  _TextButtonWidgetState createState() => _TextButtonWidgetState();
}

class _TextButtonWidgetState extends State<TextButtonWidget> {
  @override
  Widget build(BuildContext context) {

    

    return GestureDetector(
      onTap: widget.onTap,
      child: Padding(
        padding: widget.padding ?? EdgeInsets.all(5),
        child: Text(
          widget.textButton ?? 'TextButton',
          style: TextStyle(
            color: Color(4294956554),
            fontSize: 14.sp,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
    );
  }
}



///* Button Title
class ButtonTitleWidget extends StatefulWidget {
  
  final String? buttonTitle;
  final EdgeInsetsGeometry? padding;
  final Color? colorText;
  
  
  ButtonTitleWidget({
    @required this.buttonTitle,
    @required this.padding,
    @required this.colorText
  });

  @override
  _ButtonTitleWidgetState createState() => _ButtonTitleWidgetState();
}

class _ButtonTitleWidgetState extends State<ButtonTitleWidget> {
  @override
  Widget build(BuildContext context) {

    

    return Padding(
      padding: widget.padding ?? EdgeInsets.all(5),
      child: Text(
        widget.buttonTitle ?? 'ButtonTitle',
        style: TextStyle(
          color: widget.colorText ?? Colors.black,
          fontSize: 11.sp,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}








///* Description Text
class DescTextWidget extends StatefulWidget {
  
  final String? descText;
  final EdgeInsetsGeometry? padding;
  
  
  DescTextWidget({
    @required this.descText,
    @required this.padding
  });

  @override
  _DescTextWidgetState createState() => _DescTextWidgetState();
}

class _DescTextWidgetState extends State<DescTextWidget> {
  @override
  Widget build(BuildContext context) {

    

    return Padding(
      padding: widget.padding ?? EdgeInsets.all(8),
      child: Text(
        widget.descText ?? 'DescText',
        style: TextStyle(
          color: Colors.grey[300],
          fontSize: 12.sp,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}


class TextDescReadMoreWidget extends StatefulWidget {

  final String? descText;

  TextDescReadMoreWidget({
    @required this.descText
  });

  @override
  _TextDescReadMoreWidgetState createState() => _TextDescReadMoreWidgetState();
}

class _TextDescReadMoreWidgetState extends State<TextDescReadMoreWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 20, 30, 5),
      child: ReadMoreText(
        widget.descText!,
        // trimLines: 2,
        colorClickableText: Color(4294956554),
        trimMode: TrimMode.Length,
        trimLength: 120,
        textAlign: TextAlign.justify,
        trimCollapsedText: 'Show more',
        trimExpandedText: 'Show less',
        moreStyle: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.bold,color: Color(4294956554) ),
        lessStyle: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.bold,color: Color(4294956554) ),

        style: TextStyle(
            color: Colors.grey[300],
            fontSize: 11.sp,
            fontWeight: FontWeight.w500,
          ),
      ),
    );
  }
}