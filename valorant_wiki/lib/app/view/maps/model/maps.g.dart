// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'maps.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Maps _$MapsFromJson(Map<String, dynamic> json) => Maps(
      status: json['status'] as int?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MapsToJson(Maps instance) => <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      uuid: json['uuid'] as String?,
      displayName: json['displayName'] as String?,
      coordinates: json['coordinates'] as String?,
      displayIcon: json['displayIcon'] as String?,
      listViewIcon: json['listViewIcon'] as String?,
      splash: json['splash'] as String?,
      assetPath: json['assetPath'] as String?,
      mapUrl: json['mapUrl'] as String?,
      xMultiplier: (json['xMultiplier'] as num?)?.toDouble(),
      yMultiplier: (json['yMultiplier'] as num?)?.toDouble(),
      xScalarToAdd: (json['xScalarToAdd'] as num?)?.toDouble(),
      yScalarToAdd: (json['yScalarToAdd'] as num?)?.toDouble(),
      callouts: (json['callouts'] as List<dynamic>?)
          ?.map((e) => Callouts.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'uuid': instance.uuid,
      'displayName': instance.displayName,
      'coordinates': instance.coordinates,
      'displayIcon': instance.displayIcon,
      'listViewIcon': instance.listViewIcon,
      'splash': instance.splash,
      'assetPath': instance.assetPath,
      'mapUrl': instance.mapUrl,
      'xMultiplier': instance.xMultiplier,
      'yMultiplier': instance.yMultiplier,
      'xScalarToAdd': instance.xScalarToAdd,
      'yScalarToAdd': instance.yScalarToAdd,
      'callouts': instance.callouts,
    };

Callouts _$CalloutsFromJson(Map<String, dynamic> json) => Callouts(
      regionName: json['regionName'] as String?,
      superRegionName: json['superRegionName'] as String?,
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CalloutsToJson(Callouts instance) => <String, dynamic>{
      'regionName': instance.regionName,
      'superRegionName': instance.superRegionName,
      'location': instance.location,
    };

Location _$LocationFromJson(Map<String, dynamic> json) => Location(
      x: (json['x'] as num?)?.toDouble(),
      y: (json['y'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
      'x': instance.x,
      'y': instance.y,
    };
