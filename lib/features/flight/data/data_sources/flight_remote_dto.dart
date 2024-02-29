import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:travel_app/core/constant/constant.dart';
import 'package:travel_app/core/failure/failure.dart';
import 'package:travel_app/features/flight/data/data_sources/flight_dto.dart';
import '../models/search_model.dart';

class FlightRemoteDto extends FlightDto {
  Dio dio = Dio();
  @override
  Future<Either<Failures, SearchModel>> location({required String name})async {
    try {
      var response =await dio.get(
          "${Constant.baseUrl}/query?term=$name&locale=en-US&location_types=airport&limit=10&active_only=true",
          options: Options(
              headers: {
            "apikey": "NOPm5iUmQhKID8BOvvPtEO7qP0xlgqSX",
            "Accept": "application/json",
          }),
      );
      print("*******************************************");
      SearchModel searchModel=SearchModel.fromJson(response.data);
      print("//////////////////////////////////////////");
      print(response.data);
      print(searchModel.locations);
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
}
