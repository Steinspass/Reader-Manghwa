import 'package:flutter/material.dart';


class BuildContainerBNBWidget extends StatefulWidget {
  final Widget? bottomNavigationBar;
  BuildContainerBNBWidget({
   @required this.bottomNavigationBar
  });

  @override
  _BuildContainerBNBWidgetState createState() => _BuildContainerBNBWidgetState();
}

class _BuildContainerBNBWidgetState extends State<BuildContainerBNBWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
      color: Colors.transparent,                                                    
      borderRadius: BorderRadius.only(                                           
      topRight: Radius.circular(30), topLeft: Radius.circular(30)),            
      boxShadow: [                                                               
        BoxShadow(color: Colors.white10, spreadRadius: 0, blurRadius: 6),       
      ],                                                                         
      ),                                                                           
    child: ClipRRect(                                                            
      borderRadius: BorderRadius.only(                                           
      topLeft: Radius.circular(30.0),                                            
      topRight: Radius.circular(30.0),                                           
      ),                                                                         
      child: widget.bottomNavigationBar                                                              
    )  
  );
  }
}