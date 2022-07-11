import 'package:flutter/material.dart';
import 'package:manga_reader/presentation/global_widgets/aglobal_widgets.dart';
import 'package:sizer/sizer.dart';

class BottomModalOptionsSettingsWidget extends StatefulWidget {
  BottomModalOptionsSettingsWidget({Key? key}) : super(key: key);

  @override
  _BottomModalOptionsSettingsWidgetState createState() => _BottomModalOptionsSettingsWidgetState();
}

class _BottomModalOptionsSettingsWidgetState extends State<BottomModalOptionsSettingsWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 33.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ListTilesWidget(title: 'Settings', icon: Icons.settings, onTap: (){
            Navigator.pushNamed(context, '/Settings');
          }),
          
          ListTilesWidget(title: 'Premium', icon: Icons.offline_bolt_rounded, onTap: (){
            Navigator.pushNamed(context, '/Premium');
          }),
          
          ListTilesWidget(title: 'License of Open Source', icon: Icons.code_rounded, onTap: (){
            Navigator.pushNamed(context, '/License');
          }),
          
          ListTilesWidget(title: 'Privacy Policy', icon: Icons.policy_rounded, onTap: (){
            Navigator.pushNamed(context, '/Policy');
          }),
          
          ListTilesWidget(title: 'Terms & Conditions', icon: Icons.account_balance, onTap: (){
            Navigator.pushNamed(context, '/Terms');
          })
        ],
      ),
    );  
  }
}