import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:travel_app/core/constant/constant.dart';
import 'package:travel_app/core/failure/failure.dart';
import 'package:travel_app/features/flight/data/data_sources/flight_dto.dart';
import 'package:travel_app/features/flight/data/models/search_tic_model.dart';
import '../models/search_model.dart';

class FlightRemoteDto extends FlightDto {
  Dio dio = Dio();

  @override
  Future<Either<Failures, SearchModel>> location({required String name}) async {
    try {
      var response = await dio.get(
        "${Constant.baseUrl}/locations/query?term=$name&locale=en-US&location_types=airport&limit=10&active_only=true",
        options: Constant.options,
      );
      SearchModel searchModel = SearchModel.fromJson(response.data);
      return Right(searchModel);
    } catch (e) {
      if (e is DioException) {
        print(e.message);
        return Left(ServerFailure.fromDiorError(e));
      }
      print(e);
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failures, SearchTicketsModel>> searchTickets({
    required String flyFrom,
    required String flyTo,
    // required String dateFrom,
    // required String dateTo,
  }) async {
    try {
      var response = await dio.get(
          "https://api.tequila.kiwi.com/v2/search?fly_from=${flyFrom.trim()}&fly_to=${flyTo.trim()}&date_from=07/03/2024&date_to=08/03/2024",
          options: Constant.options);
      SearchTicketsModel searchTicketsModel =
          SearchTicketsModel.fromJson(response.data);
      print(response.data);
      return Right(searchTicketsModel);
    } catch (e) {
      if (e is DioException) {
        print("${e.response?.realUri}iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii");
        print(e.message);
        return Left(ServerFailure.fromDiorError(e));
      }
      print(e);
      return Left(ServerFailure(e.toString()));
    }
  }
}
