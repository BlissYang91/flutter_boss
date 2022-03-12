import 'dart:convert';
import 'package:meta/meta.dart';

class Company {
  late final String logo;
  late final String name;
  late final String location;
  late final String type;
  late final String size;
  late final String employee;
  late final String hot;
  late final String count;
  late final String inc;
  late final List<dynamic> urls;

  Company(
      {required this.logo,
      required this.name,
      required this.location,
      required this.type,
      required this.size,
      required this.employee,
      required this.hot,
      required this.count,
      required this.inc,
      required this.urls});

  static List<Company> fromJson(String json) {
    List<Company> _companys = [];
    JsonDecoder decoder = const JsonDecoder();
    var mapdata = decoder.convert(json)['list'];
    mapdata.forEach((obj) {
      Company company = Company(
        logo: obj['logo'],
        name: obj['name'],
        location: obj['location'],
        type: obj['type'],
        size: obj['size'],
        employee: obj['employee'],
        hot: obj['hot'],
        count: obj['count'],
        inc: obj['inc'],
        urls: obj['urls']
      );
      _companys.add(company);
    });
    return _companys;
  }
}
