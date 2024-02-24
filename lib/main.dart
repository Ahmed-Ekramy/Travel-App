import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:travel_app/travel_app.dart';
import 'core/di/di.dart';
import 'core/helper/bloc_observer.dart';
import 'features/search_screen/data/repositories/search_data_repo.dart';
import 'features/search_screen/domain/use_cases/search_use_case.dart';
import 'features/search_screen/presentation/manager/search_cubit.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  servicesLocator();
  runApp(
      EasyLocalization(
          startLocale: const Locale("en"),
          saveLocale: true,
          supportedLocales: const [Locale('en'), Locale('ar')],
          path: 'assets/localizations',
          fallbackLocale: const Locale('en'),
      child: BlocProvider(
          create: (context) => SearchCubit(SearchUseCase(getIt.get<SearchDataRepo>())),
          child: const TravelApp())));
}
final getIt = GetIt.instance;


