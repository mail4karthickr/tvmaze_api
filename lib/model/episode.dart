import 'package:json_annotation/json_annotation.dart';
part 'episode.g.dart';

abstract class ModelConvertible<T> {
  List<T> fromJson(Map<String, dynamic> json);
}

@JsonSerializable(explicitToJson: true)
class EpisodesList {
  List<Episode> episodes;

  EpisodesList({this.episodes});

  factory EpisodesList.fromJson(List<dynamic> json) {
    return EpisodesList(
        episodes: json.map<Episode>((e) => Episode.fromJson(e)).toList()
    );
  }
}

@JsonSerializable(explicitToJson: true)
class Episode {
  double score;
  Show show;

  Episode({this.score, this.show});

  factory Episode.fromJson(Map<String, dynamic> json) => _$EpisodeFromJson(json);

  Map<String, dynamic> toJson() => _$EpisodeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Show {
  int id;
  Uri url;
  String name;
  String type;
  String language;
  String status;
  int runTime;
  String premiered;
  String officialSite;
  Schedule schedule;
  double average;
  Network network;
  String summary;

  Show({this.id, this.url, this.name, this.type, this.language, this.status,
    this.runTime, this.premiered, this.officialSite, this.schedule, this.average,
    this.network, this.summary});

  factory Show.fromJson(Map<String, dynamic> json) => _$ShowFromJson(json);

  Map<String, dynamic> toJson() => _$ShowToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ShowImage {
  Uri medium;
  Uri original;

  ShowImage({this.medium, this.original});

  factory ShowImage.fromJson(Map<String, dynamic> json) => _$ShowImageFromJson(json);

  Map<String, dynamic> toJson() => _$ShowImageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Network {
  int id;
  String channel;
  Country country;

  Network({this.id, this.channel, this.country});

  factory Network.fromJson(Map<String, dynamic> json) => _$NetworkFromJson(json);

  Map<String, dynamic> toJson() => _$NetworkToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Country {
  String name;
  String code;
  String timeZone;

  Country({this.name, this.code, this.timeZone});

  factory Country.fromJson(Map<String, dynamic> json) => _$CountryFromJson(json);

  Map<String, dynamic> toJson() => _$CountryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Schedule {
  String time;
  Days day;

  Schedule({this.time, this.day});

  factory Schedule.fromJson(Map<String, dynamic> json) => _$ScheduleFromJson(json);

  Map<String, dynamic> toJson() => _$ScheduleToJson(this);
}

enum Days {
  monday, tuesday, wednesday, thursday, friday, saturday, sunday
}