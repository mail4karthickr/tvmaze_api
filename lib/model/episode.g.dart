// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episode.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EpisodesList _$EpisodesListFromJson(Map<String, dynamic> json) {
  return EpisodesList(
      episodes: (json['episodes'] as List)
          ?.map((e) =>
              e == null ? null : Episode.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$EpisodesListToJson(EpisodesList instance) =>
    <String, dynamic>{
      'episodes': instance.episodes?.map((e) => e?.toJson())?.toList()
    };

Episode _$EpisodeFromJson(Map<String, dynamic> json) {
  return Episode(
      score: (json['score'] as num)?.toDouble(),
      show: json['show'] == null
          ? null
          : Show.fromJson(json['show'] as Map<String, dynamic>));
}

Map<String, dynamic> _$EpisodeToJson(Episode instance) =>
    <String, dynamic>{'score': instance.score, 'show': instance.show?.toJson()};

Show _$ShowFromJson(Map<String, dynamic> json) {
  return Show(
      id: json['id'] as int,
      url: json['url'] == null ? null : Uri.parse(json['url'] as String),
      name: json['name'] as String,
      type: json['type'] as String,
      language: json['language'] as String,
      status: json['status'] as String,
      runTime: json['runTime'] as int,
      premiered: json['premiered'] as String,
      officialSite: json['officialSite'] as String,
      schedule: json['schedule'] == null
          ? null
          : Schedule.fromJson(json['schedule'] as Map<String, dynamic>),
      average: (json['average'] as num)?.toDouble(),
      network: json['network'] == null
          ? null
          : Network.fromJson(json['network'] as Map<String, dynamic>),
      summary: json['summary'] as String);
}

Map<String, dynamic> _$ShowToJson(Show instance) => <String, dynamic>{
      'id': instance.id,
      'url': instance.url?.toString(),
      'name': instance.name,
      'type': instance.type,
      'language': instance.language,
      'status': instance.status,
      'runTime': instance.runTime,
      'premiered': instance.premiered,
      'officialSite': instance.officialSite,
      'schedule': instance.schedule?.toJson(),
      'average': instance.average,
      'network': instance.network?.toJson(),
      'summary': instance.summary
    };

ShowImage _$ShowImageFromJson(Map<String, dynamic> json) {
  return ShowImage(
      medium:
          json['medium'] == null ? null : Uri.parse(json['medium'] as String),
      original: json['original'] == null
          ? null
          : Uri.parse(json['original'] as String));
}

Map<String, dynamic> _$ShowImageToJson(ShowImage instance) => <String, dynamic>{
      'medium': instance.medium?.toString(),
      'original': instance.original?.toString()
    };

Network _$NetworkFromJson(Map<String, dynamic> json) {
  return Network(
      id: json['id'] as int,
      channel: json['channel'] as String,
      country: json['country'] == null
          ? null
          : Country.fromJson(json['country'] as Map<String, dynamic>));
}

Map<String, dynamic> _$NetworkToJson(Network instance) => <String, dynamic>{
      'id': instance.id,
      'channel': instance.channel,
      'country': instance.country?.toJson()
    };

Country _$CountryFromJson(Map<String, dynamic> json) {
  return Country(
      name: json['name'] as String,
      code: json['code'] as String,
      timeZone: json['timeZone'] as String);
}

Map<String, dynamic> _$CountryToJson(Country instance) => <String, dynamic>{
      'name': instance.name,
      'code': instance.code,
      'timeZone': instance.timeZone
    };

Schedule _$ScheduleFromJson(Map<String, dynamic> json) {
  return Schedule(
      time: json['time'] as String,
      day: _$enumDecodeNullable(_$DaysEnumMap, json['day']));
}

Map<String, dynamic> _$ScheduleToJson(Schedule instance) => <String, dynamic>{
      'time': instance.time,
      'day': _$DaysEnumMap[instance.day]
    };

T _$enumDecode<T>(Map<T, dynamic> enumValues, dynamic source) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }
  return enumValues.entries
      .singleWhere((e) => e.value == source,
          orElse: () => throw ArgumentError(
              '`$source` is not one of the supported values: '
              '${enumValues.values.join(', ')}'))
      .key;
}

T _$enumDecodeNullable<T>(Map<T, dynamic> enumValues, dynamic source) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source);
}

const _$DaysEnumMap = <Days, dynamic>{
  Days.monday: 'monday',
  Days.tuesday: 'tuesday',
  Days.wednesday: 'wednesday',
  Days.thursday: 'thursday',
  Days.friday: 'friday',
  Days.saturday: 'saturday',
  Days.sunday: 'sunday'
};
