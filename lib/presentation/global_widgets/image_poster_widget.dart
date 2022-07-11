import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';



///* Image Poster Small Widget
class ImagePosterSmallWidget extends StatefulWidget {

  final Function()? onTap;
  //final ImageProvider<Object>? image;
  //final ImageProvider<Object>? placeholder;

  ImagePosterSmallWidget({
    @required this.onTap,
    //@required this.image,
    //@required this.placeholder
  });

  @override
  _ImagePosterSmallWidgetState createState() => _ImagePosterSmallWidgetState();
}

class _ImagePosterSmallWidgetState extends State<ImagePosterSmallWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(14),
        child: Placeholder(
          fallbackHeight: 12.h,
          fallbackWidth: 11.w,
        )
      ),
    );

    // return GestureDetector(
    //   onTap: widget.onTap,
    //   child: Container(
    //     child: ClipRRect(
    //       borderRadius: BorderRadius.circular(14),
    //       child: Placeholder(
    //         fallbackHeight: 12.h,
    //         fallbackWidth: 11.w,
    //       )
    //     ),
    //   ),
    // );
  }
}




//* Custom Image Poster Widget
class ImagePosterCustomWidget extends StatefulWidget {

  final Function()? onTap;
  final double? height;
  final double? width;
  //final ImageProvider<Object>? image;
  //final ImageProvider<Object>? placeholder;

  ImagePosterCustomWidget({
    @required this.onTap,
    @required this.height,
    @required this.width
    //@required this.image,
    //@required this.placeholder
  });

  @override
  _ImagePosterCustomWidgetState createState() => _ImagePosterCustomWidgetState();
}

class _ImagePosterCustomWidgetState extends State<ImagePosterCustomWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(14),
        child: Placeholder(
          fallbackHeight: widget.height ?? 10.h,
          fallbackWidth: widget.width?? 10.h,
        )
      ),
    );
  }
}