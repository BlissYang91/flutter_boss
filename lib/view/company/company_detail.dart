import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_boss/model/company.dart';
import 'package:flutter_boss/view/company/company_hot_job.dart';
import 'package:flutter_boss/view/company/company_info.dart';
import 'package:flutter_boss/view/company/company_inc.dart';
import 'package:flutter_boss/component/indicator_viewpager.dart';

const double _kAppBarHeight = 256.0;
class CompanyDetail extends StatefulWidget {
  late final Company _company;

  CompanyDetail(this._company);

  @override
  CompanyDetailState createState() => CompanyDetailState();
}

class CompanyDetailState extends State<CompanyDetail>
    with TickerProviderStateMixin {
  late List<Tab> _tabs;
  late TabController _controller;
  late List<Widget> _imagePages;
  late final List<dynamic> _urls ;
  late Widget _companyTabContent;
  late VoidCallback onChanged;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _urls = widget._company.urls;
    if (_urls.isNotEmpty) {
      _imagePages = <Widget>[];
      for (var url in _urls) {
        _imagePages.add(
          Container(
            color: Colors.black.withAlpha(900),
            child: ConstrainedBox(
              constraints: const BoxConstraints.expand(),
              child: Image.network(
                url,
                fit: BoxFit.fill,
                height: _kAppBarHeight,
                errorBuilder: (context, error, stackTrace){
                  return const Center(
                    widthFactor: 1,
                    heightFactor: 1,
                    child:Text(
                      "error",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  );
                },
              ),
            ),
          ),
        );
      }
    }

    _tabs = [
      const Tab(
        text: '公司概况',
      ),
      const Tab(
        text: '热招职位',
      ),
    ];
    _companyTabContent = CompanyInc(widget._company.inc);
    _controller = TabController(length: _tabs.length, vsync: this);
    onChanged = () {
      setState(() {
        if (_currentIndex == 0) {
          _companyTabContent = CompanyInc(widget._company.inc);
        } else {
          _companyTabContent = CompanyHotJob();
        }
        _currentIndex = _controller.index;
      });
    };
    _controller.addListener(onChanged);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 242, 242, 245),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox.fromSize(
                  size: const Size.fromHeight(_kAppBarHeight),
                  child: IndicatorViewPager(_imagePages),
                ),
                Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      CompanyInfo(widget._company),
                      const Divider(),
                      TabBar(
                        indicatorWeight: 3.0,
                        indicatorSize: TabBarIndicatorSize.tab,
                        labelStyle: const TextStyle(fontSize: 16.0),
                        labelColor: Colors.black,
                        controller: _controller,
                        tabs: _tabs,
                        indicatorColor: Theme.of(context).primaryColor,
                      ),
                    ],
                  ),
                ),
                _companyTabContent
              ],
            ),
          ),
          Positioned(
            top: 10.0,
            left: -10.0,
            child: Container(
              padding: const EdgeInsets.all(15.0),
              child: const BackButton(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _controller.removeListener(onChanged);
    _controller.dispose();
    super.dispose();
  }
}
