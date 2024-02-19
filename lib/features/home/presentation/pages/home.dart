
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/features/home/presentation/tabs/home_layout.dart';
import 'package:travel_app/features/home/presentation/tabs/setting.dart';

import '../tabs/offer_tab.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 2;
  int selectedIndex = 0;

  final List<Widget> tabs = [
    const Setting(),
    const SearchTab(),
    const HomeLayout(),
  ];

  // child:
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        body: tabs[currentIndex],
        bottomNavigationBar: Container(
          height: 65,
            color: Colors.white,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Theme(
              data: Theme.of(context)
                  .copyWith(canvasColor: Colors.transparent),
              child: BottomNavigationBar(
                  selectedIconTheme:
                  const IconThemeData(color: Colors.blue, size: 30),
                  unselectedIconTheme:
                  const IconThemeData(color: Colors.grey, size: 30),
                  onTap: (value) {
                    currentIndex = value;
                    setState(() {});
                  },
                  currentIndex: currentIndex,
                  items:  [
                    BottomNavigationBarItem(
                      backgroundColor: Colors.transparent,
                      icon: const Icon(Icons.settings, size: 30),
                      label: "Settings".tr(),
                    ),
                    BottomNavigationBarItem(
                        backgroundColor: Colors.transparent,
                        icon: const Icon(
                          Icons.local_offer_outlined,
                          size: 30,
                        ),
                        label: "Offers".tr()),
                    BottomNavigationBarItem(
                        backgroundColor: Colors.transparent,
                        icon: const Icon(
                          Icons.home,
                          size: 30,
                        ),
                        label: "Home".tr()),
                  ]),
            ),
          ),
        ));
  }
}

