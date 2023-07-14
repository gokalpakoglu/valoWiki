// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agents.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Agents _$AgentsFromJson(Map<String, dynamic> json) => Agents(
      status: json['status'] as int?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AgentsToJson(Agents instance) => <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      uuid: json['uuid'] as String?,
      displayName: json['displayName'] as String?,
      description: json['description'] as String?,
      developerName: json['developerName'] as String?,
      displayIcon: json['displayIcon'] as String?,
      displayIconSmall: json['displayIconSmall'] as String?,
      bustPortrait: json['bustPortrait'] as String?,
      fullPortrait: json['fullPortrait'] as String?,
      fullPortraitV2: json['fullPortraitV2'] as String?,
      killfeedPortrait: json['killfeedPortrait'] as String?,
      background: json['background'] as String?,
      backgroundGradientColors:
          (json['backgroundGradientColors'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
      assetPath: json['assetPath'] as String?,
      isFullPortraitRightFacing: json['isFullPortraitRightFacing'] as bool?,
      isPlayableCharacter: json['isPlayableCharacter'] as bool?,
      isAvailableForTest: json['isAvailableForTest'] as bool?,
      isBaseContent: json['isBaseContent'] as bool?,
      role: json['role'] == null
          ? null
          : Role.fromJson(json['role'] as Map<String, dynamic>),
      abilities: (json['abilities'] as List<dynamic>?)
          ?.map((e) => Abilities.fromJson(e as Map<String, dynamic>))
          .toList(),
      voiceLine: json['voiceLine'] == null
          ? null
          : VoiceLine.fromJson(json['voiceLine'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'uuid': instance.uuid,
      'displayName': instance.displayName,
      'description': instance.description,
      'developerName': instance.developerName,
      'displayIcon': instance.displayIcon,
      'displayIconSmall': instance.displayIconSmall,
      'bustPortrait': instance.bustPortrait,
      'fullPortrait': instance.fullPortrait,
      'fullPortraitV2': instance.fullPortraitV2,
      'killfeedPortrait': instance.killfeedPortrait,
      'background': instance.background,
      'backgroundGradientColors': instance.backgroundGradientColors,
      'assetPath': instance.assetPath,
      'isFullPortraitRightFacing': instance.isFullPortraitRightFacing,
      'isPlayableCharacter': instance.isPlayableCharacter,
      'isAvailableForTest': instance.isAvailableForTest,
      'isBaseContent': instance.isBaseContent,
      'role': instance.role,
      'abilities': instance.abilities,
      'voiceLine': instance.voiceLine,
    };

Role _$RoleFromJson(Map<String, dynamic> json) => Role(
      uuid: json['uuid'] as String?,
      displayName: json['displayName'] as String?,
      description: json['description'] as String?,
      displayIcon: json['displayIcon'] as String?,
      assetPath: json['assetPath'] as String?,
    );

Map<String, dynamic> _$RoleToJson(Role instance) => <String, dynamic>{
      'uuid': instance.uuid,
      'displayName': instance.displayName,
      'description': instance.description,
      'displayIcon': instance.displayIcon,
      'assetPath': instance.assetPath,
    };

Abilities _$AbilitiesFromJson(Map<String, dynamic> json) => Abilities(
      slot: json['slot'] as String?,
      displayName: json['displayName'] as String?,
      description: json['description'] as String?,
      displayIcon: json['displayIcon'] as String?,
    );

Map<String, dynamic> _$AbilitiesToJson(Abilities instance) => <String, dynamic>{
      'slot': instance.slot,
      'displayName': instance.displayName,
      'description': instance.description,
      'displayIcon': instance.displayIcon,
    };

VoiceLine _$VoiceLineFromJson(Map<String, dynamic> json) => VoiceLine(
      minDuration: (json['minDuration'] as num?)?.toDouble(),
      maxDuration: (json['maxDuration'] as num?)?.toDouble(),
      mediaList: (json['mediaList'] as List<dynamic>?)
          ?.map((e) => MediaList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$VoiceLineToJson(VoiceLine instance) => <String, dynamic>{
      'minDuration': instance.minDuration,
      'maxDuration': instance.maxDuration,
      'mediaList': instance.mediaList,
    };

MediaList _$MediaListFromJson(Map<String, dynamic> json) => MediaList(
      id: json['id'] as int?,
      wwise: json['wwise'] as String?,
      wave: json['wave'] as String?,
    );

Map<String, dynamic> _$MediaListToJson(MediaList instance) => <String, dynamic>{
      'id': instance.id,
      'wwise': instance.wwise,
      'wave': instance.wave,
    };
