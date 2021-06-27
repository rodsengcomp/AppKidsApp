import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dicasforyoutabs.dart';


class DicasTopTabs extends StatefulWidget {

  DicasTopTabs(this.colorVal);
  int colorVal;

  _DicasTopTabsState createState() => _DicasTopTabsState();
}

class _DicasTopTabsState extends State<DicasTopTabs> with SingleTickerProviderStateMixin{
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 1);
    _tabController.addListener(_handleTabSelection);
  }
  void _handleTabSelection() {
    setState(() {
      widget.colorVal=0xff109618;
    });
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length:6,
      child: Scaffold(
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            DicasForYouTabs(),
          ],
        ),
      ),
    );
  }
}

