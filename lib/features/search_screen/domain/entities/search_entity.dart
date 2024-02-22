class SearchEntity {
  List<LocationsEntity>? locations;

  SearchEntity(
      {this.locations});
}

class LocationsEntity {
  String? code;

  LocationsEntity(
      {
        this.code,
        });

}

class CityEntity {
  String? code;
  CityEntity(
      {
        this.code,

        });
}

class CountryEntity {
  String? code;

  CountryEntity({this.code});

}

class LocaleEntity {
  String? code;
  String? status;
  LocaleEntity({this.code, this.status});

}
