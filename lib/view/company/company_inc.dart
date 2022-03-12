import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CompanyInc extends StatelessWidget {
  late final String _companyInc;

  CompanyInc(this._companyInc);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 10.0),
                    child: const Text(
                      '公司介绍',
                      style: TextStyle(fontSize: 15.0),
                    ),
                  ),
                ],
              ),
              RichText(
                text: TextSpan(
                  text: _companyInc,
                  style: const TextStyle(fontSize: 13.0, color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
