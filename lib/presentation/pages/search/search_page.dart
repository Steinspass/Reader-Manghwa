import 'package:flutter/material.dart';
import 'package:manga_reader/presentation/pages/search/widgets/results_widget.dart';
import 'package:manga_reader/presentation/pages/search/widgets/suggestions_widget.dart';
import 'package:manga_reader/presentation/global_widgets/aglobal_widgets.dart';


class SearchPage extends SearchDelegate{


  @override
  ThemeData appBarTheme(BuildContext context) {

    final ThemeData theme = Theme.of(context);


    return theme.copyWith(
      primaryColor: Color(4278192148),
      primaryIconTheme: IconThemeData(
        color: Colors.grey[100],
        
      ),
      appBarTheme: AppBarTheme(
        actionsIconTheme: IconThemeData(
          color: Colors.grey[100],
          size: 25
        ),

        iconTheme: IconThemeData(
          color: Colors.grey[100],
          size: 20
        ),
        elevation: 20
      ),

      
      brightness: Brightness.dark,
      textTheme: TextTheme(
        headline6: TextStyle(color: Colors.grey[100], fontWeight: FontWeight.w600)
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: InputBorder.none
      ),
      
    );
  }


  @override
  String get searchFieldLabel => 'Search Manga';  

  @override
  TextInputAction get textInputAction => TextInputAction.search;
  
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear_rounded,),
        onPressed: () => query = '',
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.chevron_left_rounded, ),
      onPressed: () => close(context, ''),
    );
  }

  @override
  Widget buildResults(BuildContext context) {

    if(query.length <= 3) return PlaceholderErrorWidget(text: 'Please enter more than 3 letters', icon: null,);

    return ResultsWidget(title: query, totalList: 10);
  }

  @override
  Widget buildSuggestions(BuildContext context) {

    if(query.isEmpty) return PlaceholderErrorWidget(text: 'Search Manga, Manwha, Manhua', icon: Icons.search_rounded,);

    if(query.length <= 3) return SuggestionsWidget(title: 'One piece', totalList: 3,);

    return SuggestionsWidget(title: query , totalList: 7,);
  }

}