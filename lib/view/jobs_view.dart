import 'package:flutter/material.dart';
import 'package:flutter_boss/item/joblist_item.dart';
import 'package:flutter_boss/model/job.dart';

class JobsTab extends StatefulWidget {
  @override
  JobList createState() {
    return JobList();
  }
}

class JobList extends State<JobsTab> {
  List<Job> _jobs = [];

  @override
  void initState() {
    super.initState();
    getJobList();
  }

  void getJobList() {
    setState(() {
      _jobs = Job.fromJson("""
        {"list":[{"name":"架构师（Android）","cname":"蚂蚁金服","size":"B轮","salary":"25K-45K","username":"Claire","title":"HR"},
{"name":"资深Android架构师","cname":"今日头条","size":"D轮","salary":"40K-60K","username":"Kimi","title":"HRBP"}]}""");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 242, 242, 245),
      appBar: AppBar(
        elevation: 0.0,
        title: const Text(
          'Flutter 2.10.2',
          style: TextStyle(fontSize: 20.0, color: Colors.white),
        ),
      ),
      body:
          ListView.builder(itemCount: _jobs.length, itemBuilder: buildJobItem),
    );
  }

  Widget buildJobItem(BuildContext context, int index) {
    Job job = _jobs[index];
    var jobItem = InkWell(
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
      child: JobListItem(job),
    );
    return jobItem;
  }
}
