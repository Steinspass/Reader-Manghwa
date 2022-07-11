import 'package:flutter/material.dart';
import 'package:manga_reader/presentation/global_widgets/aglobal_widgets.dart';
import 'package:sizer/sizer.dart';

class PolicyPage extends StatefulWidget {
  PolicyPage({Key? key}) : super(key: key);

  @override
  _PolicyPageState createState() => _PolicyPageState();
}

class _PolicyPageState extends State<PolicyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: MiniTitleWidget(miniTitle: 'Privacy Policy', padding: const EdgeInsets.all(0), color: Colors.grey[100], fontSize: 16.sp,),
        leading: IconButtonWidget(icon: Icons.chevron_left_rounded, onTap: () => Navigator.pop(context)),
      ),
    );
  }
}