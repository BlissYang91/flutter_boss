import 'package:flutter/material.dart';

class MineTab extends StatelessWidget {
  final double _appBarHeight = 150.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 242, 242, 245),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: _appBarHeight,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  const DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(0.0, -1.0),
                        end: Alignment(0.0, -0.4),
                        colors: <Color>[
                          Color(0x00000000),
                          Color(0x00000000),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(
                          top: 20.0,
                          left: 30.0,
                          right: 20.0,
                        ),
                        child: CircleAvatar(
                          radius: 35.0,
                          backgroundImage: NetworkImage(
                              'https://avatar.csdnimg.cn/3/C/8/1_ytfunnysite_1573011077.jpg'),
                        ),
                      ),
                      Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(top: 10.0, right: 10.0),
                                child: Text(
                                  '哆啦A梦',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18.0),
                                ),
                              ),
                              Text(
                                '在职-考虑机会',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate(
            <Widget>[
              Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ContactItem(
                        count: 590,
                        title: '沟通过',
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return const AlertDialog(
                                  content: Text(
                                    "沟通过",
                                    style: TextStyle(fontSize: 20.0),
                                  ),
                                );
                              });
                        },
                      ),
                      ContactItem(
                        count: 71,
                        title: '已沟通',
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return const AlertDialog(
                                  content: Text(
                                    "已沟通",
                                    style: TextStyle(fontSize: 20.0),
                                  ),
                                );
                              });
                        },
                      ),
                      ContactItem(
                        count: 10,
                        title: '待面试',
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return const AlertDialog(
                                  content: Text(
                                    "待面试",
                                    style: TextStyle(fontSize: 20.0),
                                  ),
                                );
                              });
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
        ],
      ),
    );
  }
}

class ContactItem extends StatelessWidget {
  late final int count;
  late final String title;
  late VoidCallback onPressed;

  ContactItem({
    required this.count,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Text(
              "$count",
              style: const TextStyle(fontSize: 22.0),
            ),
          ),
          Text(title),
        ],
      ),
    );
  }
}
