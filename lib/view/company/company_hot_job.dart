import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CompanyHotJob extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          RichText(
            text: const TextSpan(
                text: "敬请期待",
                style: TextStyle(fontSize: 16.0, color: Colors.black),
            ),
          )
        ],
      ),
    );
  }
}
