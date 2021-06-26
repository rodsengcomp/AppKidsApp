import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class GameTopChartsTabs extends StatefulWidget {
  int colorVal;
  GameTopChartsTabs(this.colorVal);

  _GameTopChartsTabsState createState() => _GameTopChartsTabsState();
}

class _GameTopChartsTabsState extends State<GameTopChartsTabs>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 1);
    _tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    setState(() {
      widget.colorVal = 0xff3f51b5;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color(0xffEFF0F1),
      elevation: 14.0,
      shadowColor: Color(0x802196F3),
      child: Padding(
        padding: EdgeInsets.only(top: 32.0, left: 8.0, right: 8.0),
        child: innerNestedTabs(),
      ),
    );
  }

  Widget innerNestedTabs() {
    return DefaultTabController(
      length: 5,
      child: new Scaffold(
        appBar: new PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: new Container(
            child: new SafeArea(
              child: Column(
                children: <Widget>[
                  new Expanded(child: new Container()),
                  new TabBar(
                    isScrollable: true,
                    controller: _tabController,
                    labelPadding: EdgeInsets.all(10.0),
                    indicatorColor: Color(widget.colorVal),
                    indicatorWeight: 5.0,
                    tabs: [
                      Text("Nossas Histórias",
                          style: TextStyle(
                              color: _tabController.index == 0
                                  ? Color(widget.colorVal)
                                  : Colors.black)),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        body: new TabBarView(
          controller: _tabController,
          children: <Widget>[
            TopFreeApps(),
          ],
        ),
      ),
    );
  }

  Widget TopFreeApps() {
    return Container(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
            ListTile(
            leading: Container(
              height: 100.0,
              width: 100.0,
              decoration: new BoxDecoration(
                image: DecorationImage(
                  image: new NetworkImage(
                      'https://st2.depositphotos.com/1007168/6108/v/600/depositphotos_61083103-stock-illustration-angry-bee-character.jpg'),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            title: Text(
              'A ABELHINHA ZILU',
            ),
            subtitle: Text('Valorizando emoções'),
                onTap: () => launch('https://www.youtube.com/watch?v=XS9z9WkIox0')
          ),
          SizedBox(height: 40.0),
          ListTile(
            leading: Container(
              height: 100.0,
              width: 100.0,
              decoration: new BoxDecoration(
                image: DecorationImage(
                  image: new NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWw9aq1LGXROoKHAmzsf6afV9_ySWjZtD3ygmTI37rq6uiel-WyzlMu-kzIuML9KZFZCM&usqp=CAU'),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            title: Text(
              'A LAGARTA MEDROSA',
            ),
            subtitle: Text('Varal de Histórias'),
              onTap: () => launch('https://www.youtube.com/watch?v=SZKyC8pT9sM')
          ),
          SizedBox(height: 40.0),
          ListTile(
            leading: Container(
              height: 100.0,
              width: 100.0,
              decoration: new BoxDecoration(
                image: DecorationImage(
                  image: new NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQN3VEG3mf2ePY01MfEpoIZiTM2gdfwxTU72w&usqp=CAU'),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            title: Text(
              'TUDO BEM SER DIFERENTE',
            ),
            subtitle: Text('Varal de Histórias'),
              onTap: () => launch('https://www.youtube.com/watch?v=-2_cQxGFYKE')
          ),
          SizedBox(height: 40.0),
          ListTile(
            leading: Container(
              height: 100.0,
              width: 100.0,
              decoration: new BoxDecoration(
                image: DecorationImage(
                  image: new NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7T2y6mpNFzw9cWc5S3vLycoXeRL9mGR2WfmPbV3otUlonfn6QNwRTExP2E9JW4cur9w&usqp=CAU'),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            title: Text(
              'CÉU DE PAPEL',
            ),
            subtitle: Text('Fafá Conta'),
              onTap: () => launch('https://www.youtube.com/watch?v=nvjqo605o_U')
          ),
        ],
      ),
    );
  }
}
