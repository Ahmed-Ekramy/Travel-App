import 'package:either_dart/either.dart';
import 'package:travel_app/core/failure/failure.dart';
import 'package:travel_app/features/flight/data/models/search_model.dart';
import 'package:travel_app/features/flight/data/models/search_tic_model.dart';
import 'package:travel_app/features/flight/domain/entities/search_entity.dart';

abstract class FlightDto{
  Future<Either<Failures,SearchModel>> location({required String name});
  Future<Either<Failures,SearchTicketsModel>> searchTickets(
      {
    required String flyFrom,
    required String flyTo,
    required String dateFrom,
  //   required String dateTo,
   }
  );
}