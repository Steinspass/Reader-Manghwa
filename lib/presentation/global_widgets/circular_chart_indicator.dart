import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:percent_indicator/percent_indicator.dart';



class CircularChartIndicator extends StatefulWidget {

  final double? rating;

  CircularChartIndicator({
    @required this.rating
  });

  @override
  _CircularChartIndicatorState createState() => _CircularChartIndicatorState();
}

class _CircularChartIndicatorState extends State<CircularChartIndicator> {
  @override
  Widget build(BuildContext context) {
    double percent = widget.rating! / 10;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      child: CircularPercentIndicator(
        percent: percent,
        radius: 38.0,
        circularStrokeCap: CircularStrokeCap.round,
        animation: true,
        animationDuration: 600,
        lineWidth: 4.4,
        backgroundColor: Colors.blueGrey[600]!,
        progressColor: Color(4294956554),
        center: Text(
          '${widget.rating}',
          style: new TextStyle(
          fontWeight: FontWeight.w800,
          fontSize: 9.sp,
          color: Color(4294951680),
          shadows: [
            Shadow(
              blurRadius: 0.5,
              color: Colors.black,
            )
          ]
        ),
        ),
      ),
    );
  }
  
}