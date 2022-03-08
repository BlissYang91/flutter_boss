import 'dart:convert';

import 'package:flutter/foundation.dart';

class Job {
  late final String name;
  late final String cname;
  late final String size;
  late final String salary;
  late final String username;
  late final String title;

  Job({
    required this.name,
    required this.cname,
    required this.size,
    required this.salary,
    required this.username,
    required this.title,
  });

  static List<Job> fromJson(String json) {
    List<Job> _jobs = [];
    JsonDecoder decoder = const JsonDecoder();
    var mapdata = decoder.convert(json)['list'];
    mapdata.forEach((obj) {
      Job job = Job(name: obj['name'],
          cname: obj['cname'],
          size: obj['size'],
          salary: obj['salary'],
          username: obj['username'],
          title: obj['title']);
      _jobs.add(job);
    });
    return _jobs;
  }
}
