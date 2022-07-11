import 'package:flutter/material.dart';
import 'package:manga_reader/presentation/pages/download/widgets/item_download_widget.dart';


class TabBarViewDownloadWidget extends StatefulWidget {
  final bool? isDownload; 
  TabBarViewDownloadWidget({
    @required this.isDownload
  });

  @override
  _TabBarViewDownloadWidgetState createState() => _TabBarViewDownloadWidgetState();
}

class _TabBarViewDownloadWidgetState extends State<TabBarViewDownloadWidget> {
  @override
  Widget build(BuildContext context) {

    List<Widget> listWidgets = [
      ItemDownloadWidget(title: 'Gintama', episode: 'Ep. 205/493', page: 'Pag. 12/23', isDownloaded: widget.isDownload ?? false  , onTap: (){}, ),
      ItemDownloadWidget(title: 'One Piece', episode: 'Ep. 873/1021', page: 'Pag. 12/23', isDownloaded: widget.isDownload ?? false  , onTap: (){}, ),
      ItemDownloadWidget(title: 'Tower of God', episode: 'Ep. 233/493', page: 'Pag. 12/23', isDownloaded: widget.isDownload ?? false , onTap: (){}, ),
      ItemDownloadWidget(title: 'Solo Leveling', episode: 'Ep. 103/123', page: 'Pag. 5/21', isDownloaded: widget.isDownload ?? false , onTap: (){}, ),
      ItemDownloadWidget(title: 'Kingdom', episode: 'Ep. 503/627', page: 'Pag. 1/18', isDownloaded: widget.isDownload ?? false , onTap: (){}, ),
      ItemDownloadWidget(title: '20th Century Boys', episode: 'Ep. 203/223', page: 'Pag. 1/18', isDownloaded: widget.isDownload ?? false , onTap: (){}, ),
      ItemDownloadWidget(title: 'Vinland Saga', episode: 'Ep. 190/191', page: 'Pag. 1/18', isDownloaded: widget.isDownload ?? false , onTap: (){}, ),
      ItemDownloadWidget(title: 'Wind Breaker', episode: 'Ep. 346/347', page: 'Pag. 1/18', isDownloaded: widget.isDownload ?? false , onTap: (){}, ),
      ItemDownloadWidget(title: 'Sweet Home', episode: 'Ep. 107/223', page: 'Pag. 4/28', isDownloaded: widget.isDownload ?? false , onTap: (){}, ),
      ItemDownloadWidget(title: 'Berserk', episode: 'Ep. 307/347', page: 'Pag. 1/18', isDownloaded: widget.isDownload ?? false , onTap: (){}, ),
    ];


    return ListView.builder(
      itemBuilder: (context, index) {
        return listWidgets[index];
      },
      itemCount: listWidgets.length,
    );
  }
}