class SearchEntity {
  List<LocationsEntity>? locations;
  SearchEntity({this.locations});
}
class LocationsEntity {
  String? code;
  String? name;
  LocationsEntity(
      {
        this.code,
        this.name,
  });
}
class CityEntity {
  String? code;
  CityEntity({
    this.code,
  });
}
class CountryEntity {
  String? code;
  CountryEntity({this.code});
}

