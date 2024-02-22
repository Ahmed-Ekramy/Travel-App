import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:travel_app/core/constant/constant.dart';
import 'package:travel_app/core/failure/failure.dart';
import 'package:travel_app/features/search_screen/data/data_sources/search_dto.dart';
import '../models/search_model.dart';

class SearchRemoteDto extends SearchDto {
  Dio dio = Dio();
  @override
  Future<Either<Failures, SearchModel>> location()async {
    try {
      var response =await dio.get(
          "${Constant.baseUrl}/query?term=PRG&locale=en-US&location_types=airport&limit=10&active_only=true",
          options: Options(
              headers: {
            "apikey": "NOPm5iUmQhKID8BOvvPtEO7qP0xlgqSX",
            "Accept": "application/json",
          }),
      );
      SearchModel searchModel=SearchModel.fromJson(response.data);
      return Right(searchModel);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDiorError(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }
}
