import 'package:either_dart/either.dart';
import 'package:travel_app/features/search_screen/domain/repositories/search_domain_repo.dart';

import '../../../../core/failure/failure.dart';
import '../entities/search_entity.dart';

class SearchUseCase{
  SearchDomainRepo searchDomainRepo;
  SearchUseCase(this.searchDomainRepo);
  Future<Either<Failures,SearchEntity>> call({required String name})=>searchDomainRepo.location(name: name);
}