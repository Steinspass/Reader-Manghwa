import 'package:flutter/material.dart';
import 'package:manga_reader/presentation/global_widgets/aglobal_widgets.dart';
import 'package:sizer/sizer.dart';




class TestWidgetPage extends StatefulWidget {
  TestWidgetPage({Key? key}) : super(key: key);

  @override
  _TestWidgetPageState createState() => _TestWidgetPageState();
}

class _TestWidgetPageState extends State<TestWidgetPage> {





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5.0,
        title: TitlePageWidget(padding: null, titlePage: 'Test Widgets Page',),
      ),
      floatingActionButton: FabExtendedWidget(title: 'FAB Extended', onTap: (){ print('Clicked FAB'); }, icon: null, isScrolling: true , ), //FabWidget(onTap: (){ print('Clicked FAB'); }, icon: null),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          TitlePageWidget(padding: null, titlePage: 'Title Page',),
          Divider(),
          TitleWidget(padding: null, title: 'Title Widget',),
          Divider(),
          SubTitleWidget(padding: null, subtitle: 'SubTitle Widget',),
          Divider(),
          MiniTitleWidget(padding: null, miniTitle: ' Mini Title Widget', color: null,),
          Divider(),
          TextButtonWidget(padding: null, textButton: 'Text Button' ,onTap: (){ print('Clicked Button Text'); },),
          Divider(),
          DescTextWidget(padding: null, descText: 'Sit adipisicing fugiat tempor qui nisi tempor occaecat et id. Ex dolore nulla sunt laboris irure. Enim deserunt id culpa reprehenderit mollit.',),
          Divider(),
          RoundedButtonWidget(onTap: (){ print('Clicked Rounded Button'); } , text: 'Rounded Button',),
          Divider(),
          BorderButtonWidget(onTap: (){ print('Clicked Border Button'); } , text: 'Border Button',),
          Divider(),
          PlaceholderErrorWidget(text: null, icon: null),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 5.w,),
              ImagePosterCustomWidget(onTap: (){ print('Clicked Image Poster Custom Medium'); } , height: 8.h, width: 7.w,),
              SizedBox(width: 5.w,),
              ImagePosterSmallWidget(onTap: (){ print('Clicked Image Poster Small'); } ,),
              SizedBox(width: 5.w,),
              ImagePosterCustomWidget(onTap: (){ print('Clicked Image Poster Custom Medium'); } , height: 16.h, width: 15.w,),
              SizedBox(width: 5.w,),
              ImagePosterCustomWidget(onTap: (){ print('Clicked Image Poster Custom Bigger'); } , height: 20.h, width: 19.w,),
              SizedBox(width: 5.w,),
            ],
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ChipsWidget(title: "chip 1", onTap:(){ print('Clicked Chip 1'); } ),
              ChipsWidget(title: "chip 2", onTap:(){ print('Clicked Chip 2'); } ),
              ChipsWidget(title: "chip 3", onTap:(){ print('Clicked Chip 3'); } ),
              ChipsWidget(title: "chip 4", onTap:(){ print('Clicked Chip 4'); } ),
              ChipsWidget(title: "chip 5", onTap:(){ print('Clicked Chip 5'); } ),
              ChipsWidget(title: "chip 6", onTap:(){ print('Clicked Chip 6'); } ),
            ],
          ),
          Divider(),
          CardWidget(
            onTap: (){},
            height: null,
            padding: null,
            widget: Container(),
          ),
          SizedBox(height: 30.h,)
          
        ],
      ),
    );
  }
}