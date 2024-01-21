import 'package:flutter/material.dart';
import 'package:travel_app/features/home/presentation/tabs/home_layout.dart';
import 'package:travel_app/features/home/presentation/tabs/prof.dart';

import '../tabs/search_tab.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;
  int selectedIndex = 0;
  List<Widget> tabs = [
    const Prof(),
    const SearchTab(),
    const HomeLayout(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[currentIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Container(
          width: 358,
          height: 70,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
            // تدوير الزوايا
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 2,
                blurRadius: 8,
                offset: const Offset(0, 3), // تحديد الظل
              ),
            ],
          ),
          child: BottomNavigationBar(
              elevation: 0,
              selectedIconTheme:
                  const IconThemeData(color: Colors.blue, size: 30),
              unselectedIconTheme:
                  const IconThemeData(color: Colors.grey, size: 30),
              onTap: (value) {
                currentIndex = value;
                setState(() {});
              },
              currentIndex: currentIndex,
              items: const [
                BottomNavigationBarItem(
                  backgroundColor: Colors.transparent,
                  icon: Icon(Icons.account_circle, size: 30),
                  label: "حسابك",
                ),
                BottomNavigationBarItem(
                    backgroundColor: Colors.transparent,
                    icon: Icon(
                      Icons.search_rounded,
                      size: 30,
                    ),
                    label: "بحث"),
                BottomNavigationBarItem(
                    backgroundColor: Colors.transparent,
                    icon: Icon(
                      Icons.home,
                      size: 30,
                    ),
                    label: "الرئسية"),
                // BottomNavigationBarItem(
                //     backgroundColor: Colors.transparent,
                //     icon: Icon(
                //       Icons.bookmark_added,
                //       size: 30,
                //     ),
                //     label: ""),
              ]),
        ),
      ),
    );
  }
}
