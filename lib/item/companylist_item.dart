import 'package:flutter/material.dart';
import 'package:flutter_boss/model/company.dart';

class CompanyListItem extends StatelessWidget {
  late final Company company;

  CompanyListItem(this.company);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 3.0,
        left: 5.0,
        right: 5.0,
        bottom: 3.0,
      ),
      child: SizedBox(
        child: Card(
          elevation: 0.0,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 10.0, left: 15.0, right: 15.0, bottom: 0.0),
                child: Image.network(
                  company.logo,
                  width: 50.0,
                  height: 50.0,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace){
                    return const Center(
                      widthFactor: 1,
                      heightFactor: 1,
                      child:Text(
                        "error",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.red),
                      ),
                    );
                  },
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      child: Text(
                        company.name,
                        textAlign: TextAlign.left,
                        style: const TextStyle(fontSize: 15.0),
                      ),
                      margin: const EdgeInsets.only(top: 10.0, bottom: 5.0),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 5.0, left: 0.0, right: 5.0, bottom: 5.0),
                      child: Text(
                        company.location,
                        style:
                            const TextStyle(fontSize: 13.0, color: Colors.grey),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 5.0, left: 0.0, right: 5.0, bottom: 5.0),
                      child: Text(
                        company.type +
                            ' | ' +
                            company.size +
                            ' | ' +
                            company.employee,
                        style:
                            const TextStyle(fontSize: 13.0, color: Colors.grey),
                      ),
                    ),
                    const Divider(),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 5.0, left: 0.0, right: 5.0, bottom: 5.0),
                          child: SizedBox(
                            width: 200,
                            child: Text(
                              '热招：' + company.hot + '等' + company.count + '个职位',
                              textAlign: TextAlign.left,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: const TextStyle(
                                  fontSize: 13.0, color: Colors.grey),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(bottom: 8.0),
                                child: Icon(
                                  Icons.keyboard_arrow_right,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
