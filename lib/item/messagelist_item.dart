import 'package:flutter/material.dart';
import 'package:flutter_boss/model/message.dart';

class MessageListItem extends StatelessWidget {
  final Message message;

  MessageListItem(this.message);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Card(
        elevation: 0.0,
        child: Row(
          children: [
            const Padding(
                padding: EdgeInsets.only(
              left: 15.0,
              right: 15.0,
              bottom: 0.0,
            )),
            CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage(message.avatar),
            ),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  child: Text(
                    message.name,
                    textAlign: TextAlign.left,
                    style: const TextStyle(fontSize: 15.0),
                  ),
                  margin: const EdgeInsets.only(top: 10.0, bottom: 5.0),
                ),
                 Padding(
                    padding: const EdgeInsets.only(
                        top: 5.0, left: 5.0, right: 5.0, bottom: 5.0),
                    child: Text(
                        message.company + ' | ' + message.position,
                      style: const TextStyle(fontSize: 13.0, color: Colors.grey),
                    )
                ),
                 Padding(
                    padding: const EdgeInsets.only(
                        top: 5.0, left: 0.0, right: 5.0, bottom: 10.0),
                    child: Text(
                        message.msg,
                      style: const TextStyle(fontSize: 13.0, color: Colors.grey),
                    )
                ),

              ],
            )),
          ],
        ),
      ),
    );
  }
}
