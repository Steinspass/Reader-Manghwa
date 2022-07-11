import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';


void showBottomModalCustomWidget(BuildContext context, {@required Widget? widget}){
  showModalBottomSheet(
    context: context, 
    builder: (context) => Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Center(
          child: Container(
            margin: const EdgeInsets.all(8),
            height: 0.8.h,
            width: 12.w,
            decoration: BoxDecoration(
              color: Color(4279902248).withOpacity(0.6),
              borderRadius: BorderRadius.circular(30)
            ),
          ),
        ),
        widget!,
        SizedBox(height: 2.h,),
      ],
    ),
    elevation: 20,
    backgroundColor: Color(4278192148),
    enableDrag: true,
    barrierColor: Color(4279902248).withOpacity(0.4),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: const Radius.circular(30),
        topRight: const Radius.circular(30)
      )
    ),

  );
}
