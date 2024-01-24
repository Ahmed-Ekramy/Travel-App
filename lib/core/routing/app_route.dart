import 'package:flutter/material.dart';
import 'package:travel_app/core/routing/route.dart';
import '../../features/flight/presentation/pages/flight_screen.dart';
import '../../features/home/presentation/pages/home.dart';
import '../../features/home/presentation/tabs/home_layout.dart';
import '../../features/number_of_passengers/presentation/pages/number_of_passengers.dart';
import '../../features/travel_class/presentation/pages/travel_class.dart';

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
     case (Routes.flightScreen):
     return MaterialPageRoute(
      builder: (context) {
       return const FlightScreen();
      },
     );
     case (Routes.passengers):
     return MaterialPageRoute(
      builder: (context) {
       return const NumberOfPassengers();
      },
     );
 case (Routes.travelClass):
     return MaterialPageRoute(
      builder: (context) {
       return const TravelClass();
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