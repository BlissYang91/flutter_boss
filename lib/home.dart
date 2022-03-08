import 'package:flutter/material.dart';
import 'component/icon_tab.dart';
import 'view/jobs_view.dart';

class BossAPP extends StatefulWidget {
  @override
  HomeState createState() {
    return HomeState();
  }
}
const double _kTabTextSize = 11.0;
const int INDEX_JOB = 0;
const int INDEX_COMPANY = 1;
const int INDEX_MESSAGE = 2;
const int INDEX_MINE = 3;
Color _kPrimaryColor = const Color.fromARGB(255, 0, 215, 198);

class HomeState extends State<BossAPP> with SingleTickerProviderStateMixin {
  int _currentIndex = 0 ;
  late TabController _controller;
  late VoidCallback _voidCallback;
  @override
  void initState() {
    super.initState();
    _controller = TabController(initialIndex: _currentIndex,length: 4,vsync: this);
    _voidCallback = (){
      setState(() {
        _currentIndex = _controller.index;
      });
    };
    _controller.addListener(_voidCallback);

  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        children: [
          JobsTab(),
          JobsTab(),
          JobsTab(),
          JobsTab()
        ],
        controller: _controller,
      ),
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
          controller: _controller,
          indicatorSize: TabBarIndicatorSize.label,
          labelStyle: const TextStyle(fontSize: _kTabTextSize),
          tabs: <IconTab>[
            IconTab(
              icon: _currentIndex == INDEX_JOB
                  ? "images/ic_main_tab_company_pre.png" : "images/ic_main_tab_company_nor.png",
              text: "职位",
              color:_currentIndex == INDEX_JOB ? _kPrimaryColor : Colors.grey[900]
            ),
            IconTab(
              icon: _currentIndex == INDEX_COMPANY
                  ? "images/ic_main_tab_company_pre.png" : "images/ic_main_tab_company_nor.png",
              text: "公司",
              color:_currentIndex == INDEX_COMPANY ? _kPrimaryColor : Colors.grey[900]
            ),
            IconTab(
              icon: _currentIndex == INDEX_MESSAGE
                  ? "images/ic_main_tab_company_pre.png" : "images/ic_main_tab_company_nor.png",
              text: "消息",
              color:_currentIndex == INDEX_MESSAGE ? _kPrimaryColor : Colors.grey[900]
            ),
            IconTab(
              icon: _currentIndex == INDEX_MINE
                  ? "images/ic_main_tab_company_pre.png" : "images/ic_main_tab_company_nor.png",
              text: "我的",
              color:_currentIndex == INDEX_MINE ? _kPrimaryColor : Colors.grey[900]
            ),
          ],
        ),
      ),
    );
  }
}
