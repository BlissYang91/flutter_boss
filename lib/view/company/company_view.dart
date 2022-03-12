import 'package:flutter/material.dart';
import 'package:flutter_boss/item/companylist_item.dart';
import 'package:flutter_boss/model/company.dart';
import 'package:flutter_boss/view/company/company_detail.dart';

class CompanyTab extends StatefulWidget {
  @override
  CompanyList createState() {
    return CompanyList();
  }
}

class CompanyList extends State<CompanyTab> {
  List<Company> _companys = [];

  @override
  void initState() {
    super.initState();
    getCompanyList();
  }

  void getCompanyList() {
    setState(() {
      _companys = Company.fromJson("""
      {
        "list":[
            {
                "logo":"https://img.bosszhipin.com/beijin/upload/com/logo/20191016/e910cb099ec7b0aaf7450ca9ab38dfab3c4524069ab1483b6f80adcb0d04c7f0.png?x-oss-process=image/resize,w_120,limit_0",
                "name":"杭州蚂蚁金服信息技术有限公司",
                "location":"上海市浦东新区",
                "type":"互联网",
                "size":"B轮",
                "employee":"1000人以上",
                "hot":"资深开放产品技术工程师",
                "count":"500",
                "urls":["https://gw.alipayobjects.com/mdn/rms_02c092/afts/img/A*6tbHTKwqALsAAAAAAAAAAAAAARQnAQ","https://gw.alipayobjects.com/mdn/rms_02c092/afts/img/A*g4nNRKG3LB8AAAAAAAAAAAAAARQnAQ","https://gw.alipayobjects.com/mdn/rms_02c092/afts/img/A*hWjwSZIB75sAAAAAAAAAAAAAARQnAQ"],
                "inc":"蚂蚁金融服务集团（以下称蚂蚁金服）起步于2004年成立的支付宝。2014年10月，蚂蚁金服正式成立。蚂蚁金服以为世界带来微小而美好的改变为愿景，致力于打造开放的生态系统，通过互联网推进器计划助力金融机构和合作伙伴加速迈向互联网+，为小微企业和个人消费者提供普惠金融服务。蚂蚁金服集团旗下及相关业务包括生活服务平台支付宝、智慧理财平台蚂蚁聚宝、云计算服务平台蚂蚁金融云、独立第三方信用评价体系芝麻信用以及网商银行等。另外，蚂蚁金服也与投资控股的公司及关联公司一起，在业务和服务层面通力合作，深度整合共推商业生态系统的繁荣。"
            },
            {
                "logo":"https://img.bosszhipin.com/beijin/mcs/banner/00c9c1238ae2c986f3e7741be97a9669cfcd208495d565ef66e7dff9f98764da.jpg?x-oss-process=image/resize,w_120,limit_0",
                "name":"百度",
                "location":"上海浦东新区百度研发中心纳贤路701号",
                "type":"互联网",
                "size":"已上市",
                "employee":"10000人以上",
                "hot":"索算法工程师",
                "count":"500",
                "urls":["https://bdyingxiaocms.cdn.bcebos.com/2022-02-07/6200c68b2170a.jpg","https://bdyingxiaocms.cdn.bcebos.com/20220307/6225a70ca1f16.jpg","https://bdyingxiaocms.cdn.bcebos.com/2021-09-27/61514244e47cc.jpg"],                
                "inc":"“百度”二字，来自于八百年前南宋词人辛弃疾的一句词：众里寻他千百度。这句话描述了词人对理想的执着追求。 百度拥有数万名研发工程师，这是中国乃至全球最为优秀的技术团队。这支队伍掌握着世界上最为先进的搜索引擎技术，使百度成为中国掌握世界尖端科学核心技术的中国高科技企业，也使中国成为美国、俄罗斯、和韩国之外，全球仅有的4个拥有搜索引擎核心技术的国家之一。"
            },
            {
                "logo":"https://img.bosszhipin.com/beijin/upload/com/logo/20210525/77d60eae41e48b90df64951371a7a07a19f97e2c258c6cead07beaf11928d91b.png?x-oss-process=image/resize,w_120,limit_0",
                "name":"北京字节跳动科技有限公司",
                "location":"上海徐汇区漕河泾中心c座28",
                "type":"互联网",
                "size":"D轮以上",
                "employee":"1000人以上",
                "hot":"经营分析师",
                "count":"300",
                "urls":["https://www.lgstatic.com/thumbnail_1000x0/i/image2/M01/D6/39/CgotOVxS54iAbUUSAAI3q6IWsVs564.png","https://www.lgstatic.com/thumbnail_1000x0/i/image2/M01/D6/1A/CgoB5lxS7suAc2c8AASLK6brDHI478.jpg","https://www.lgstatic.com/thumbnail_1000x0/i/image/M00/6F/9D/CgqCHl-2LAmADc6rAAL0yPtawhQ641.png"],                
                "inc":"字节跳动成立于2012年3月，公司使命为Inspire Creativity, Enrich Life（激发创造，丰富生活）。目前公司的业务已覆盖150个国家和地区、75个语种，拥有超过6万名员工。字节跳动在全球推出了多款有影响力的产品，包括今日头条、抖音、西瓜视频、飞书、TikTok、FaceU激萌、轻颜、剪映、CapCut等。 截至2020年8月，字节跳动旗下产品全球月活跃用户数超过15亿。"
            },
            {
                "logo":"https://img.bosszhipin.com/beijin/upload/com/workfeel/20220310/7bf6f160950405e97e72d2362ad9328d510dbe18bd56dc070da5c4ba88c88d6b20b6ec3feb77ea92.jpg",
                "name":"爱奇艺",
                "location":"上海市浦东新区",
                "type":"互联网",
                "size":"已上市",
                "employee":"1000人以上",
                "hot":"移动端测试开发工程师",
                "count":"200",
                 "urls":["https://media-exp1.licdn.com/dms/image/C5109AQEyo5Alq89XpA/company-featured_1128_635/0/1562299240610?e=2147483647&v=beta&t=03e5o1i9mjiO3QUfbqgaMkMGIRu53mS5rDgOKKU2tv0","https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fpic2.bowangcaijing.cn%2F21%2Fimg%2F202111%2F17171923645.jpg&refer=http%3A%2F%2Fpic2.bowangcaijing.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1649707499&t=88d419ef56cf22051bd6c43af7667bde","https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fwww.veryol.com%2Fwp-content%2Fuploads%2F2019%2F02%2F2019022209194029.jpg&refer=http%3A%2F%2Fwww.veryol.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1649707546&t=f70102f3a51a59dfecdf83bf0672c8f9"],
                "inc":"2010年4月22日正式上线，推崇品质、青春、时尚的品牌内涵 如今已深入人心，网罗了全球广大的年轻用户群体，积极推动产品、技术、内容、营销等全方位创新。2018年3月29日于纳斯达克上市，股票代码IQ。目前，爱奇艺已成功构建了包含短视频、游戏、移动直播、动漫画、小说、电影票、IP潮品、线下娱乐等业务在内、连接人与服务的 娱乐内容生态，引领视频网站商业模式的多元化发展。企业愿景：做一家以科技创新为驱动的伟大娱乐公司。 企业使命：让梦想绽放 让快乐简单。企业文化：简单想 简单做"
            }
        ]
      }""");
    });
  }

  navCompanyDetail(Company company, int index) {
    Navigator.of(context).push(
      PageRouteBuilder(
        opaque: false,
        pageBuilder: (BuildContext context, _, __) {
          return CompanyDetail(company);
        },
        transitionsBuilder: (_, Animation<double> animation, __, Widget child) {
          return FadeTransition(
            opacity: animation,
            child: SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(0.0, 1.0),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 242, 242, 245),
      appBar: AppBar(
        elevation: 0.0,
        title: const Text(
          'Flutter 2+',
          style: TextStyle(fontSize: 20.0, color: Colors.white),
        ),
      ),
      body: ListView.builder(
          itemCount: _companys.length, itemBuilder: buildCompanyItem),
    );
  }

  Widget buildCompanyItem(BuildContext context, int index) {
    Company company = _companys[index];
    var companyItem = InkWell(
      onTap: () => navCompanyDetail(company, index),
      child: CompanyListItem(company),
    );
    return companyItem;
  }
}

