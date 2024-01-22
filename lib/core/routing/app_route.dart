import 'package:flutter/material.dart';
import 'package:travel_app/core/routing/route.dart';
import '../../features/home/presentation/pages/home.dart';
import '../../features/home/presentation/tabs/home_layout.dart';

class AppRoute{
 static Route generateRoute(RouteSettings settings){
   switch(settings.name){
    case (Routes.home):
     return MaterialPageRoute(
      builder: (context) {
       return const Home();
      },
     );
     case (Routes.homeLayout):
     return MaterialPageRoute(
      builder: (context) {
       return const HomeLayout();
      },
     );
    default:
     return MaterialPageRoute(
      builder: (context) {
       return const Scaffold(
        body: Center(
         child: Text("No route defined"),
        ),
       );
      },
     );
   }
 }
}