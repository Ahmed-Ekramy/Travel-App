import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/core/routing/route.dart';
import 'package:travel_app/features/login/presentation/pages/login_screen.dart';
import 'package:travel_app/features/flight/data/repositories/flight_data_repo.dart';
import 'package:travel_app/features/flight/domain/use_cases/flight_use_case.dart';
import 'package:travel_app/features/search_screen/presentation/pages/search_screen.dart';
import '../../features/economic_degree/presentation/pages/economic_degree.dart';
import '../../features/flight/presentation/manager/flight_cubit.dart';
import '../../features/flight/presentation/pages/flight_screen.dart';
import '../../features/forgot_password/presentation/pages/forgot_password_screen.dart';
import '../../features/home/presentation/pages/home.dart';
import '../../features/home/presentation/tabs/home_layout.dart';
import '../../features/new_password/presentation/pages/new_password.dart';
import '../../features/number_of_passengers/presentation/pages/number_of_passengers.dart';
import '../../features/offer_detial/presentation/pages/offer_detail_screen.dart';
import '../../features/prof/presentation/pages/prof.dart';
import '../../features/prof_edit/presentation/pages/prof_edit_screen.dart';
import '../../main.dart';

class AppRoute {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
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
            return BlocProvider(
                create: (context) =>
                    FlightCubit(FlightUseCase(getIt.get<FlightDataRepo>())),
                child: const FlightScreen());
          },
        );
      case (Routes.passengers):
        return MaterialPageRoute(
          builder: (context) {
            final arg = settings.arguments as Map<String, dynamic>;
            return BlocProvider<FlightCubit>.value(
                value: arg["Bloc"],
                child: NumberOfPassengers(nameFun: arg["sumFun"],));
          },
        );

      case (Routes.offerDetailScreen):
        return MaterialPageRoute(
          builder: (context) {
            return const OfferDetailScreen();
          },
        );
      case (Routes.login):
        return MaterialPageRoute(
          builder: (context) {
            return const LoginScreen();
          },
        );
      case (Routes.forgotPassword):
        return MaterialPageRoute(
          builder: (context) {
            return const ForgotPassword();
          },
        );
      case (Routes.prof):
        return MaterialPageRoute(
          builder: (context) {
            return const Profile();
          },
        );
      case (Routes.profEditScreen):
        return MaterialPageRoute(
          builder: (context) {
            return const ProfEditScreen();
          },
        );

      case (Routes.newPassword):
        return MaterialPageRoute(
          builder: (context) {
            return const NewPassword(

            );
          },
        );
      case (Routes.search):
        return MaterialPageRoute(
          builder: (context) {
            final arg = settings.arguments as Map<String, dynamic>;
            return BlocProvider<FlightCubit>.value(
              value: arg["Bloc"],
              child: SearchScreen(
                hintText1: arg["name"],
                roundTrip: arg["searchType"],
              ),
            );
          },
        );
      case (Routes.economicDegree):
        return MaterialPageRoute(
          builder: (context) {
            final arg = settings.arguments as Map<String, dynamic>;
            return BlocProvider<FlightCubit>.value(
              value: arg["Bloc"],
              child: EconomicDegree(
                nameClass: arg["nameClass"],
              ),
            );
          },
        );

// case (Routes.searchResultScreen):
//         return MaterialPageRoute(
//           builder: (context) {
//             return const SearchResultScreen(
//
//             );
//           },
//         );
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
