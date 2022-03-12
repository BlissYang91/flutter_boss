import 'dart:convert';

import 'package:flutter/foundation.dart';

class Message {
  late final String name;
  late final String avatar;
  late final String company;
  late final String position;
  late final String msg;

  Message({
    required this.name,
    required this.avatar,
    required this.company,
    required this.position,
    required this.msg,
  });

  static List<Message> fromJson(String json) {
    List<Message> _msgs = [];
    JsonDecoder decoder = const JsonDecoder();
    var mapdata = decoder.convert(json)['list'];
    mapdata.forEach((obj) {
      Message _msg = Message(
          name: obj['name'],
          avatar: obj['avatar'],
          company: obj['company'],
          position: obj['position'],
          msg: obj['msg']);
      _msgs.add(_msg);
    });
    return _msgs;
  }
}
