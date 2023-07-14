// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weapons.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Weapons _$WeaponsFromJson(Map<String, dynamic> json) => Weapons(
      status: json['status'] as int?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WeaponsToJson(Weapons instance) => <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      uuid: json['uuid'] as String?,
      displayName: json['displayName'] as String?,
      category: json['category'] as String?,
      defaultSkinUuid: json['defaultSkinUuid'] as String?,
      displayIcon: json['displayIcon'] as String?,
      killStreamIcon: json['killStreamIcon'] as String?,
      assetPath: json['assetPath'] as String?,
      weaponStats: json['weaponStats'] == null
          ? null
          : WeaponStats.fromJson(json['weaponStats'] as Map<String, dynamic>),
      shopData: json['shopData'] == null
          ? null
          : ShopData.fromJson(json['shopData'] as Map<String, dynamic>),
      skins: (json['skins'] as List<dynamic>?)
          ?.map((e) => Skins.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'uuid': instance.uuid,
      'displayName': instance.displayName,
      'category': instance.category,
      'defaultSkinUuid': instance.defaultSkinUuid,
      'displayIcon': instance.displayIcon,
      'killStreamIcon': instance.killStreamIcon,
      'assetPath': instance.assetPath,
      'weaponStats': instance.weaponStats,
      'shopData': instance.shopData,
      'skins': instance.skins,
    };

WeaponStats _$WeaponStatsFromJson(Map<String, dynamic> json) => WeaponStats(
      fireRate: json['fireRate'] as int?,
      magazineSize: json['magazineSize'] as int?,
      runSpeedMultiplier: (json['runSpeedMultiplier'] as num?)?.toDouble(),
      equipTimeSeconds: (json['equipTimeSeconds'] as num?)?.toDouble(),
      reloadTimeSeconds: json['reloadTimeSeconds'] as int?,
      firstBulletAccuracy: (json['firstBulletAccuracy'] as num?)?.toDouble(),
      shotgunPelletCount: json['shotgunPelletCount'] as int?,
      wallPenetration: json['wallPenetration'] as String?,
      feature: json['feature'] as String?,
      altFireType: json['altFireType'] as String?,
      adsStats: json['adsStats'] == null
          ? null
          : AdsStats.fromJson(json['adsStats'] as Map<String, dynamic>),
      damageRanges: (json['damageRanges'] as List<dynamic>?)
          ?.map((e) => DamageRanges.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WeaponStatsToJson(WeaponStats instance) =>
    <String, dynamic>{
      'fireRate': instance.fireRate,
      'magazineSize': instance.magazineSize,
      'runSpeedMultiplier': instance.runSpeedMultiplier,
      'equipTimeSeconds': instance.equipTimeSeconds,
      'reloadTimeSeconds': instance.reloadTimeSeconds,
      'firstBulletAccuracy': instance.firstBulletAccuracy,
      'shotgunPelletCount': instance.shotgunPelletCount,
      'wallPenetration': instance.wallPenetration,
      'feature': instance.feature,
      'altFireType': instance.altFireType,
      'adsStats': instance.adsStats,
      'damageRanges': instance.damageRanges,
    };

AdsStats _$AdsStatsFromJson(Map<String, dynamic> json) => AdsStats(
      zoomMultiplier: (json['zoomMultiplier'] as num?)?.toDouble(),
      fireRate: (json['fireRate'] as num?)?.toDouble(),
      runSpeedMultiplier: (json['runSpeedMultiplier'] as num?)?.toDouble(),
      burstCount: json['burstCount'] as int?,
      firstBulletAccuracy: (json['firstBulletAccuracy'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$AdsStatsToJson(AdsStats instance) => <String, dynamic>{
      'zoomMultiplier': instance.zoomMultiplier,
      'fireRate': instance.fireRate,
      'runSpeedMultiplier': instance.runSpeedMultiplier,
      'burstCount': instance.burstCount,
      'firstBulletAccuracy': instance.firstBulletAccuracy,
    };

DamageRanges _$DamageRangesFromJson(Map<String, dynamic> json) => DamageRanges(
      rangeStartMeters: json['rangeStartMeters'] as int?,
      rangeEndMeters: json['rangeEndMeters'] as int?,
      headDamage: json['headDamage'] as int?,
      bodyDamage: json['bodyDamage'] as int?,
      legDamage: (json['legDamage'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$DamageRangesToJson(DamageRanges instance) =>
    <String, dynamic>{
      'rangeStartMeters': instance.rangeStartMeters,
      'rangeEndMeters': instance.rangeEndMeters,
      'headDamage': instance.headDamage,
      'bodyDamage': instance.bodyDamage,
      'legDamage': instance.legDamage,
    };

ShopData _$ShopDataFromJson(Map<String, dynamic> json) => ShopData(
      cost: json['cost'] as int?,
      category: json['category'] as String?,
      categoryText: json['categoryText'] as String?,
      gridPosition: json['gridPosition'] == null
          ? null
          : GridPosition.fromJson(json['gridPosition'] as Map<String, dynamic>),
      canBeTrashed: json['canBeTrashed'] as bool?,
      newImage: json['newImage'] as String?,
      assetPath: json['assetPath'] as String?,
    );

Map<String, dynamic> _$ShopDataToJson(ShopData instance) => <String, dynamic>{
      'cost': instance.cost,
      'category': instance.category,
      'categoryText': instance.categoryText,
      'gridPosition': instance.gridPosition,
      'canBeTrashed': instance.canBeTrashed,
      'newImage': instance.newImage,
      'assetPath': instance.assetPath,
    };

GridPosition _$GridPositionFromJson(Map<String, dynamic> json) => GridPosition(
      row: json['row'] as int?,
      column: json['column'] as int?,
    );

Map<String, dynamic> _$GridPositionToJson(GridPosition instance) =>
    <String, dynamic>{
      'row': instance.row,
      'column': instance.column,
    };

Skins _$SkinsFromJson(Map<String, dynamic> json) => Skins(
      uuid: json['uuid'] as String?,
      displayName: json['displayName'] as String?,
      themeUuid: json['themeUuid'] as String?,
      contentTierUuid: json['contentTierUuid'] as String?,
      displayIcon: json['displayIcon'] as String?,
      assetPath: json['assetPath'] as String?,
      chromas: (json['chromas'] as List<dynamic>?)
          ?.map((e) => Chromas.fromJson(e as Map<String, dynamic>))
          .toList(),
      levels: (json['levels'] as List<dynamic>?)
          ?.map((e) => Levels.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SkinsToJson(Skins instance) => <String, dynamic>{
      'uuid': instance.uuid,
      'displayName': instance.displayName,
      'themeUuid': instance.themeUuid,
      'contentTierUuid': instance.contentTierUuid,
      'displayIcon': instance.displayIcon,
      'assetPath': instance.assetPath,
      'chromas': instance.chromas,
      'levels': instance.levels,
    };

Chromas _$ChromasFromJson(Map<String, dynamic> json) => Chromas(
      uuid: json['uuid'] as String?,
      displayName: json['displayName'] as String?,
      fullRender: json['fullRender'] as String?,
      assetPath: json['assetPath'] as String?,
    );

Map<String, dynamic> _$ChromasToJson(Chromas instance) => <String, dynamic>{
      'uuid': instance.uuid,
      'displayName': instance.displayName,
      'fullRender': instance.fullRender,
      'assetPath': instance.assetPath,
    };

Levels _$LevelsFromJson(Map<String, dynamic> json) => Levels(
      uuid: json['uuid'] as String?,
      displayName: json['displayName'] as String?,
      displayIcon: json['displayIcon'] as String?,
      assetPath: json['assetPath'] as String?,
    );

Map<String, dynamic> _$LevelsToJson(Levels instance) => <String, dynamic>{
      'uuid': instance.uuid,
      'displayName': instance.displayName,
      'displayIcon': instance.displayIcon,
      'assetPath': instance.assetPath,
    };
