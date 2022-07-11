import 'package:flutter/material.dart';
import 'package:manga_reader/presentation/global_widgets/aglobal_widgets.dart';
import 'package:sizer/sizer.dart';

class TermsAndCondPage extends StatefulWidget {
  TermsAndCondPage({Key? key}) : super(key: key);

  @override
  _TermsAndCondPageState createState() => _TermsAndCondPageState();
}

class _TermsAndCondPageState extends State<TermsAndCondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: MiniTitleWidget(miniTitle: 'Terms & Conditions', padding: const EdgeInsets.all(0), color: Colors.grey[100], fontSize: 16.sp,),
        leading: IconButtonWidget(icon: Icons.chevron_left_rounded, onTap: () => Navigator.pop(context)),
      ),
    );
  }
}