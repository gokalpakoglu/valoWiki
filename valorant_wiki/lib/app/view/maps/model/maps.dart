import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
part 'maps.g.dart';

@JsonSerializable()
class Maps with EquatableMixin {
  int? status;
  List<Data>? data;

  Maps({
    this.status,
    this.data,
  });

  factory Maps.fromJson(Map<String, dynamic> json) => _$MapsFromJson(json);

  Map<String, dynamic> toJson() => _$MapsToJson(this);

  @override
  List<Object?> get props => [status, data];

  Maps copyWith({
    int? status,
    List<Data>? data,
  }) {
    return Maps(
      status: status ?? this.status,
      data: data ?? this.data,
    );
  }
}

@JsonSerializable()
class Data with EquatableMixin {
  String? uuid;
  String? displayName;
  String? coordinates;
  String? displayIcon;
  String? listViewIcon;
  String? splash;
  String? assetPath;
  String? mapUrl;
  double? xMultiplier;
  double? yMultiplier;
  double? xScalarToAdd;
  double? yScalarToAdd;
  List<Callouts>? callouts;

  Data({
    this.uuid,
    this.displayName,
    this.coordinates,
    this.displayIcon,
    this.listViewIcon,
    this.splash,
    this.assetPath,
    this.mapUrl,
    this.xMultiplier,
    this.yMultiplier,
    this.xScalarToAdd,
    this.yScalarToAdd,
    this.callouts,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);

  @override
  List<Object?> get props => [
        uuid,
        displayName,
        coordinates,
        displayIcon,
        listViewIcon,
        splash,
        assetPath,
        mapUrl,
        xMultiplier,
        yMultiplier,
        xScalarToAdd,
        yScalarToAdd,
        callouts
      ];

  Data copyWith({
    String? uuid,
    String? displayName,
    String? coordinates,
    String? displayIcon,
    String? listViewIcon,
    String? splash,
    String? assetPath,
    String? mapUrl,
    double? xMultiplier,
    double? yMultiplier,
    double? xScalarToAdd,
    double? yScalarToAdd,
    List<Callouts>? callouts,
  }) {
    return Data(
      uuid: uuid ?? this.uuid,
      displayName: displayName ?? this.displayName,
      coordinates: coordinates ?? this.coordinates,
      displayIcon: displayIcon ?? this.displayIcon,
      listViewIcon: listViewIcon ?? this.listViewIcon,
      splash: splash ?? this.splash,
      assetPath: assetPath ?? this.assetPath,
      mapUrl: mapUrl ?? this.mapUrl,
      xMultiplier: xMultiplier ?? this.xMultiplier,
      yMultiplier: yMultiplier ?? this.yMultiplier,
      xScalarToAdd: xScalarToAdd ?? this.xScalarToAdd,
      yScalarToAdd: yScalarToAdd ?? this.yScalarToAdd,
      callouts: callouts ?? this.callouts,
    );
  }
}

@JsonSerializable()
class Callouts with EquatableMixin {
  String? regionName;
  String? superRegionName;
  Location? location;

  Callouts({
    this.regionName,
    this.superRegionName,
    this.location,
  });

  factory Callouts.fromJson(Map<String, dynamic> json) =>
      _$CalloutsFromJson(json);

  Map<String, dynamic> toJson() => _$CalloutsToJson(this);

  @override
  List<Object?> get props => [regionName, superRegionName, location];

  Callouts copyWith({
    String? regionName,
    String? superRegionName,
    Location? location,
  }) {
    return Callouts(
      regionName: regionName ?? this.regionName,
      superRegionName: superRegionName ?? this.superRegionName,
      location: location ?? this.location,
    );
  }
}

@JsonSerializable()
class Location with EquatableMixin {
  double? x;
  double? y;

  Location({
    this.x,
    this.y,
  });

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  Map<String, dynamic> toJson() => _$LocationToJson(this);

  @override
  List<Object?> get props => [x, y];

  Location copyWith({
    double? x,
    double? y,
  }) {
    return Location(
      x: x ?? this.x,
      y: y ?? this.y,
    );
  }
}
