import 'package:flutter/material.dart';
import 'package:livechat/View/Messenger/followed.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../Colors/colors.dart';
import 'calls.dart';
import 'messeges.dart';

class Messenger extends StatefulWidget {
  const Messenger({Key? key}) : super(key: key);

  @override
  _MessengerState createState() => _MessengerState();
}

class _MessengerState extends State<Messenger> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TabBar(
            controller: _tabController,
            onTap: (index) {
              setState(() {

              });
            },
            indicatorColor: Colors.transparent,
            tabs: [
              Tab(
                child: Builder(
                  builder: (context) {
                    final selected = _tabController.index == 0;
                    return Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Messages",
                        style: TextStyle(
                          color: selected ? AppColors.theme2 : Colors.black,
                        ),
                      ),
                    );
                  },
                ),
              ),
              Tab(
                child: Builder(
                  builder: (context) {
                    final selected = _tabController.index == 1;
                    return Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Text(
                        "Calls",
                        style: TextStyle(
                          color: selected ? AppColors.theme2 : Colors.black,
                        ),
                      ),
                    );
                  },
                ),
              ),
              Tab(
                child: Builder(
                  builder: (context) {
                    final selected = _tabController.index == 2;
                    return Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Text(
                        "Followed",
                        style: TextStyle(
                          color: selected ? AppColors.theme2  : Colors.black,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              physics: NeverScrollableScrollPhysics(),
              controller: _tabController,
              children: [
                Messeges(),
                Calls(),
               Followed(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
