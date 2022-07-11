import 'package:flutter/material.dart';
import 'package:manga_reader/presentation/global_widgets/aglobal_widgets.dart';
import 'package:manga_reader/presentation/pages/filter/widgets/multi_select_chips_widget.dart';
import 'package:manga_reader/presentation/pages/filter/widgets/select_choice_chips_widget.dart';
import 'package:sizer/sizer.dart';


class BuildDialogFilterWidget extends StatefulWidget {
  BuildDialogFilterWidget({Key? key}) : super(key: key);

  @override
  _BuildDialogFilterWidgetState createState() => _BuildDialogFilterWidgetState();
}

class _BuildDialogFilterWidgetState extends State<BuildDialogFilterWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: MiniTitleWidget(miniTitle: 'Filter', padding: const EdgeInsets.all(0), color: Colors.grey[100], fontSize: 16.sp,),
        leading: IconButtonWidget(icon: Icons.chevron_left_rounded, onTap: () => Navigator.pop(context)),
      ),
      body: BuildBodyfilter(),
      floatingActionButton: FabExtendedWidget(icon: Icons.filter_list_rounded, title: 'Apply',isScrolling: true, onTap: (){
        Navigator.pushNamed(context, '/Filter');
      }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}



class BuildBodyfilter extends StatefulWidget {
  BuildBodyfilter({Key? key}) : super(key: key);

  @override
  _BuildBodyfilterState createState() => _BuildBodyfilterState();
}

class _BuildBodyfilterState extends State<BuildBodyfilter> {


  bool isTypeSelected = false;
  bool isDemographySelected = false;
  bool isStatusSelected = false;


  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(height: 2.h,),
        BuildSelectChoice(
          listType: ['Manga','Manwha', 'Manhua'],
          typeSelected: (String selected) {
            print('$selected');
            setState(() {
                isTypeSelected = !isTypeSelected;          
            });
          },
        ),
        SizedBox(height: 4.h,),
        !isTypeSelected ? SizedBox.shrink() : MiniTitleWidget(miniTitle: 'Demography', padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 4), color: Colors.grey, fontSize: 10.sp,),
        !isTypeSelected ? SizedBox.shrink() : SizedBox(height: 2.h,),
        !isTypeSelected ? SizedBox.shrink() : BuildSelectChoice(
          listType: ['Shonen','Shojo', 'Seinen', 'Josei'],
          typeSelected: (String selected) {
            print('$selected');
            setState(() {
                isDemographySelected = !isDemographySelected;          
            });
          },
        ),
        !isTypeSelected ? SizedBox.shrink() : SizedBox(height: 4.h,),
        !isTypeSelected ? SizedBox.shrink() : MiniTitleWidget(miniTitle: 'Status', padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 4), color: Colors.grey, fontSize: 10.sp,),
        !isTypeSelected ? SizedBox.shrink() : SizedBox(height: 2.h,),
        !isTypeSelected ? SizedBox.shrink() : BuildSelectChoice(
          listType: ['Ended','Publishing', 'Cancelled',],
          typeSelected: (String selected) {
            print('$selected');
            setState(() {
                isStatusSelected = !isStatusSelected;          
            });
          },
        ),
        !isTypeSelected ? SizedBox.shrink() : SizedBox(height: 4.h,),
        !isTypeSelected ? SizedBox.shrink() : MiniTitleWidget(miniTitle: 'Genre', padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 4), color: Colors.grey, fontSize: 10.sp,),
        !isTypeSelected ? SizedBox.shrink() : SizedBox(height: 2.h,),
        !isTypeSelected ? SizedBox.shrink() : MultiSelectChipsWidget(
          list: [
          'Action',
          'Adventure',
          'Thiller',
          'Comedy',
          'Romance',
          'Mecha',
          'School Life',
          'Military',
          'Ciberpunk',
          'Survival',
          'Mistery',
          'Gore',
          'War' 
          ],
          selectedItem: (String selected) {
              print('$selected');        
          },
        ),
        SizedBox(height: 4.h,),
      ],
    );
  }
}