import 'package:flutter/material.dart';
import 'package:travel_app/core/theming/text_style.dart';

import '../tabs/go_back_tab.dart';
import '../tabs/go_tab.dart';
import '../tabs/multiple_trip_tabs.dart';

class FlightScreen extends StatelessWidget {
  const FlightScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
              physics: const BouncingScrollPhysics(),
              indicatorColor: Colors.blue,
              labelColor: Colors.blue,
              labelStyle: readexPro16w700(),
              unselectedLabelStyle:
                  readexPro12w400().copyWith(color: Colors.grey),
              tabs: const [
                Tab(
                    child: Text(
                      "Going"
                )),
                Tab(child: Text("Round trip")),
                Tab(child: Text("Multiple trips ",)),
              ]),
        ),
        body: const TabBarView(children: [
          GoTab(),
          GoAndBackTabs(),
          MultipleTripTab(),
        ]),
      ),
    );
  }
}
