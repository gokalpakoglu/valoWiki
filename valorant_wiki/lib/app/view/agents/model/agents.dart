import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
part 'agents.g.dart';

@JsonSerializable()
class Agents with EquatableMixin {
  int? status;
  List<Data>? data;

  Agents({
    this.status,
    this.data,
  });

  factory Agents.fromJson(Map<String, dynamic> json) => _$AgentsFromJson(json);

  Map<String, dynamic> toJson() => _$AgentsToJson(this);

  @override
  List<Object?> get props => [status, data];

  Agents copyWith({
    int? status,
    List<Data>? data,
  }) {
    return Agents(
      status: status ?? this.status,
      data: data ?? this.data,
    );
  }
}

@JsonSerializable()
class Data with EquatableMixin {
  String? uuid;
  String? displayName;
  String? description;
  String? developerName;
  String? displayIcon;
  String? displayIconSmall;
  String? bustPortrait;
  String? fullPortrait;
  String? fullPortraitV2;
  String? killfeedPortrait;
  String? background;
  List<String>? backgroundGradientColors;
  String? assetPath;
  bool? isFullPortraitRightFacing;
  bool? isPlayableCharacter;
  bool? isAvailableForTest;
  bool? isBaseContent;
  Role? role;
  List<Abilities>? abilities;
  VoiceLine? voiceLine;

  Data({
    this.uuid,
    this.displayName,
    this.description,
    this.developerName,
    this.displayIcon,
    this.displayIconSmall,
    this.bustPortrait,
    this.fullPortrait,
    this.fullPortraitV2,
    this.killfeedPortrait,
    this.background,
    this.backgroundGradientColors,
    this.assetPath,
    this.isFullPortraitRightFacing,
    this.isPlayableCharacter,
    this.isAvailableForTest,
    this.isBaseContent,
    this.role,
    this.abilities,
    this.voiceLine,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);

  @override
  List<Object?> get props => [
        uuid,
        displayName,
        description,
        developerName,
        displayIcon,
        displayIconSmall,
        bustPortrait,
        fullPortrait,
        fullPortraitV2,
        killfeedPortrait,
        background,
        backgroundGradientColors,
        assetPath,
        isFullPortraitRightFacing,
        isPlayableCharacter,
        isAvailableForTest,
        isBaseContent,
        role,
        abilities,
        voiceLine
      ];

  Data copyWith({
    String? uuid,
    String? displayName,
    String? description,
    String? developerName,
    String? displayIcon,
    String? displayIconSmall,
    String? bustPortrait,
    String? fullPortrait,
    String? fullPortraitV2,
    String? killfeedPortrait,
    String? background,
    List<String>? backgroundGradientColors,
    String? assetPath,
    bool? isFullPortraitRightFacing,
    bool? isPlayableCharacter,
    bool? isAvailableForTest,
    bool? isBaseContent,
    Role? role,
    List<Abilities>? abilities,
    VoiceLine? voiceLine,
  }) {
    return Data(
      uuid: uuid ?? this.uuid,
      displayName: displayName ?? this.displayName,
      description: description ?? this.description,
      developerName: developerName ?? this.developerName,
      displayIcon: displayIcon ?? this.displayIcon,
      displayIconSmall: displayIconSmall ?? this.displayIconSmall,
      bustPortrait: bustPortrait ?? this.bustPortrait,
      fullPortrait: fullPortrait ?? this.fullPortrait,
      fullPortraitV2: fullPortraitV2 ?? this.fullPortraitV2,
      killfeedPortrait: killfeedPortrait ?? this.killfeedPortrait,
      background: background ?? this.background,
      backgroundGradientColors:
          backgroundGradientColors ?? this.backgroundGradientColors,
      assetPath: assetPath ?? this.assetPath,
      isFullPortraitRightFacing:
          isFullPortraitRightFacing ?? this.isFullPortraitRightFacing,
      isPlayableCharacter: isPlayableCharacter ?? this.isPlayableCharacter,
      isAvailableForTest: isAvailableForTest ?? this.isAvailableForTest,
      isBaseContent: isBaseContent ?? this.isBaseContent,
      role: role ?? this.role,
      abilities: abilities ?? this.abilities,
      voiceLine: voiceLine ?? this.voiceLine,
    );
  }
}

@JsonSerializable()
class Role with EquatableMixin {
  String? uuid;
  String? displayName;
  String? description;
  String? displayIcon;
  String? assetPath;

  Role({
    this.uuid,
    this.displayName,
    this.description,
    this.displayIcon,
    this.assetPath,
  });

  factory Role.fromJson(Map<String, dynamic> json) => _$RoleFromJson(json);

  Map<String, dynamic> toJson() => _$RoleToJson(this);

  @override
  List<Object?> get props =>
      [uuid, displayName, description, displayIcon, assetPath];

  Role copyWith({
    String? uuid,
    String? displayName,
    String? description,
    String? displayIcon,
    String? assetPath,
  }) {
    return Role(
      uuid: uuid ?? this.uuid,
      displayName: displayName ?? this.displayName,
      description: description ?? this.description,
      displayIcon: displayIcon ?? this.displayIcon,
      assetPath: assetPath ?? this.assetPath,
    );
  }
}

@JsonSerializable()
class Abilities with EquatableMixin {
  String? slot;
  String? displayName;
  String? description;
  String? displayIcon;

  Abilities({
    this.slot,
    this.displayName,
    this.description,
    this.displayIcon,
  });

  factory Abilities.fromJson(Map<String, dynamic> json) =>
      _$AbilitiesFromJson(json);

  Map<String, dynamic> toJson() => _$AbilitiesToJson(this);

  @override
  List<Object?> get props => [slot, displayName, description, displayIcon];

  Abilities copyWith({
    String? slot,
    String? displayName,
    String? description,
    String? displayIcon,
  }) {
    return Abilities(
      slot: slot ?? this.slot,
      displayName: displayName ?? this.displayName,
      description: description ?? this.description,
      displayIcon: displayIcon ?? this.displayIcon,
    );
  }
}

@JsonSerializable()
class VoiceLine with EquatableMixin {
  double? minDuration;
  double? maxDuration;
  List<MediaList>? mediaList;

  VoiceLine({
    this.minDuration,
    this.maxDuration,
    this.mediaList,
  });

  factory VoiceLine.fromJson(Map<String, dynamic> json) =>
      _$VoiceLineFromJson(json);

  Map<String, dynamic> toJson() => _$VoiceLineToJson(this);

  @override
  List<Object?> get props => [minDuration, maxDuration, mediaList];

  VoiceLine copyWith({
    double? minDuration,
    double? maxDuration,
    List<MediaList>? mediaList,
  }) {
    return VoiceLine(
      minDuration: minDuration ?? this.minDuration,
      maxDuration: maxDuration ?? this.maxDuration,
      mediaList: mediaList ?? this.mediaList,
    );
  }
}

@JsonSerializable()
class MediaList with EquatableMixin {
  int? id;
  String? wwise;
  String? wave;

  MediaList({
    this.id,
    this.wwise,
    this.wave,
  });

  factory MediaList.fromJson(Map<String, dynamic> json) =>
      _$MediaListFromJson(json);

  Map<String, dynamic> toJson() => _$MediaListToJson(this);

  @override
  List<Object?> get props => [id, wwise, wave];

  MediaList copyWith({
    int? id,
    String? wwise,
    String? wave,
  }) {
    return MediaList(
      id: id ?? this.id,
      wwise: wwise ?? this.wwise,
      wave: wave ?? this.wave,
    );
  }
}

