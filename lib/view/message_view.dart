import 'package:flutter/material.dart';
import 'package:flutter_boss/item/messagelist_item.dart';
import 'package:flutter_boss/model/message.dart';

class MessagesTab extends StatefulWidget {
  @override
  MessagesList createState() {
    return MessagesList();
  }
}

class MessagesList extends State<MessagesTab> {
  List<Message> _msgs = [];

  @override
  void initState() {
    super.initState();
    getJobList();
  }

  void getJobList() {
    setState(() {
      _msgs = Message.fromJson("""
       {
          "list":[
              {
                  "avatar":"https://tse1-mm.cn.bing.net/th/id/R-C.bef98bd19e6be8f86a507d07191f8feb?rik=XVTVmYd7sRbpGQ&riu=http%3a%2f%2ftupian.qqw21.com%2farticle%2fUploadPic%2f2019-7%2f201971622263525455.jpeg&ehk=mzqsinDGdR%2ftn%2bHUhQXGUWIxhqNrlQvvv6I4xCD4la0%3d&risl=&pid=ImgRaw&r=0&sres=1&sresct=1",
                  "name":"小可爱",
                  "company":"百度",
                  "position":"HR",
                  "msg":"你好"
              }
          ]
       }""");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 242, 242, 245),
      appBar: AppBar(
        elevation: 0.0,
        title: const Text(
          'Dart 2.16.1',
          style: TextStyle(fontSize: 20.0, color: Colors.white),
        ),
      ),
      body: ListView.builder(
          itemCount: _msgs.length, itemBuilder: buildMessageItem),
    );
  }

  Widget buildMessageItem(BuildContext context, int index) {
    Message msg = _msgs[index];
    var messageItem = InkWell(
      onTap: () {
        showDialog<bool>(
            context: context,
            builder: (context) {
              return const AlertDialog(
                content: Text(
                  "敬请期待",
                  style: TextStyle(fontSize: 20.0),
                ),
              );
            });
      },
      child: MessageListItem(msg),
    );
    return messageItem;
  }
}
