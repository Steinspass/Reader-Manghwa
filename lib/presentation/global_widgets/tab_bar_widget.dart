import 'package:flutter/material.dart';


class TabBarWidget extends StatefulWidget {
  final List<Widget>? tabs;
  final bool? isScrollable;
  final TabController? controller;
  
  TabBarWidget({
    @required this.tabs,
    @required this.controller,
    this.isScrollable,

  });

  @override
  _TabBarWidgetState createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: TabBar(
          controller: widget.controller,
          tabs: widget.tabs ?? [],
          indicatorColor: Colors.transparent,
          isScrollable: widget.isScrollable ?? true,
        ),
      ),
    );
  }
}