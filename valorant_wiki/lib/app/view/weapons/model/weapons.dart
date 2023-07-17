import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
part 'weapons.g.dart';

@JsonSerializable()
class Weapons with EquatableMixin {
  int? status;
  List<Data>? data;

  Weapons({
    this.status,
    this.data,
  });

  factory Weapons.fromJson(Map<String, dynamic> json) =>
      _$WeaponsFromJson(json);

  Map<String, dynamic> toJson() => _$WeaponsToJson(this);

  @override
  List<Object?> get props => [status, data];

  Weapons copyWith({
    int? status,
    List<Data>? data,
  }) {
    return Weapons(
      status: status ?? this.status,
      data: data ?? this.data,
    );
  }
}

@JsonSerializable()
class Data with EquatableMixin {
  String? uuid;
  String? displayName;
  String? category;
  String? defaultSkinUuid;
  String? displayIcon;
  String? killStreamIcon;
  String? assetPath;
  // WeaponStats? weaponStats;
  ShopData? shopData;
  List<Skins>? skins;

  Data({
    this.uuid,
    this.displayName,
    this.category,
    this.defaultSkinUuid,
    this.displayIcon,
    this.killStreamIcon,
    this.assetPath,
    // this.weaponStats,
    this.shopData,
    this.skins,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);

  @override
  List<Object?> get props => [
        uuid,
        displayName,
        category,
        defaultSkinUuid,
        displayIcon,
        killStreamIcon,
        assetPath,
        // weaponStats,
        shopData,
        skins
      ];

  Data copyWith({
    String? uuid,
    String? displayName,
    String? category,
    String? defaultSkinUuid,
    String? displayIcon,
    String? killStreamIcon,
    String? assetPath,
    // WeaponStats? weaponStats,
    ShopData? shopData,
    List<Skins>? skins,
  }) {
    return Data(
      uuid: uuid ?? this.uuid,
      displayName: displayName ?? this.displayName,
      category: category ?? this.category,
      defaultSkinUuid: defaultSkinUuid ?? this.defaultSkinUuid,
      displayIcon: displayIcon ?? this.displayIcon,
      killStreamIcon: killStreamIcon ?? this.killStreamIcon,
      assetPath: assetPath ?? this.assetPath,
      // weaponStats: weaponStats ?? this.weaponStats,
      shopData: shopData ?? this.shopData,
      skins: skins ?? this.skins,
    );
  }
}

@JsonSerializable()
class WeaponStats with EquatableMixin {
  int? fireRate;
  int? magazineSize;
  double? runSpeedMultiplier;
  double? equipTimeSeconds;
  int? reloadTimeSeconds;
  double? firstBulletAccuracy;
  int? shotgunPelletCount;
  String? wallPenetration;
  String? feature;
  String? altFireType;
  AdsStats? adsStats;
  List<DamageRanges>? damageRanges;

  WeaponStats({
    this.fireRate,
    this.magazineSize,
    this.runSpeedMultiplier,
    this.equipTimeSeconds,
    this.reloadTimeSeconds,
    this.firstBulletAccuracy,
    this.shotgunPelletCount,
    this.wallPenetration,
    this.feature,
    this.altFireType,
    this.adsStats,
    this.damageRanges,
  });

  factory WeaponStats.fromJson(Map<String, dynamic> json) =>
      _$WeaponStatsFromJson(json);

  Map<String, dynamic> toJson() => _$WeaponStatsToJson(this);

  @override
  List<Object?> get props => [
        fireRate,
        magazineSize,
        runSpeedMultiplier,
        equipTimeSeconds,
        reloadTimeSeconds,
        firstBulletAccuracy,
        shotgunPelletCount,
        wallPenetration,
        feature,
        altFireType,
        adsStats,
        damageRanges
      ];

  WeaponStats copyWith({
    int? fireRate,
    int? magazineSize,
    double? runSpeedMultiplier,
    double? equipTimeSeconds,
    int? reloadTimeSeconds,
    double? firstBulletAccuracy,
    int? shotgunPelletCount,
    String? wallPenetration,
    String? feature,
    String? altFireType,
    AdsStats? adsStats,
    List<DamageRanges>? damageRanges,
  }) {
    return WeaponStats(
      fireRate: fireRate ?? this.fireRate,
      magazineSize: magazineSize ?? this.magazineSize,
      runSpeedMultiplier: runSpeedMultiplier ?? this.runSpeedMultiplier,
      equipTimeSeconds: equipTimeSeconds ?? this.equipTimeSeconds,
      reloadTimeSeconds: reloadTimeSeconds ?? this.reloadTimeSeconds,
      firstBulletAccuracy: firstBulletAccuracy ?? this.firstBulletAccuracy,
      shotgunPelletCount: shotgunPelletCount ?? this.shotgunPelletCount,
      wallPenetration: wallPenetration ?? this.wallPenetration,
      feature: feature ?? this.feature,
      altFireType: altFireType ?? this.altFireType,
      adsStats: adsStats ?? this.adsStats,
      damageRanges: damageRanges ?? this.damageRanges,
    );
  }
}

@JsonSerializable()
class AdsStats with EquatableMixin {
  double? zoomMultiplier;
  double? fireRate;
  double? runSpeedMultiplier;
  int? burstCount;
  double? firstBulletAccuracy;

  AdsStats({
    this.zoomMultiplier,
    this.fireRate,
    this.runSpeedMultiplier,
    this.burstCount,
    this.firstBulletAccuracy,
  });

  factory AdsStats.fromJson(Map<String, dynamic> json) =>
      _$AdsStatsFromJson(json);

  Map<String, dynamic> toJson() => _$AdsStatsToJson(this);

  @override
  List<Object?> get props => [
        zoomMultiplier,
        fireRate,
        runSpeedMultiplier,
        burstCount,
        firstBulletAccuracy
      ];

  AdsStats copyWith({
    double? zoomMultiplier,
    double? fireRate,
    double? runSpeedMultiplier,
    int? burstCount,
    double? firstBulletAccuracy,
  }) {
    return AdsStats(
      zoomMultiplier: zoomMultiplier ?? this.zoomMultiplier,
      fireRate: fireRate ?? this.fireRate,
      runSpeedMultiplier: runSpeedMultiplier ?? this.runSpeedMultiplier,
      burstCount: burstCount ?? this.burstCount,
      firstBulletAccuracy: firstBulletAccuracy ?? this.firstBulletAccuracy,
    );
  }
}

@JsonSerializable()
class DamageRanges with EquatableMixin {
  int? rangeStartMeters;
  int? rangeEndMeters;
  int? headDamage;
  int? bodyDamage;
  double? legDamage;

  DamageRanges({
    this.rangeStartMeters,
    this.rangeEndMeters,
    this.headDamage,
    this.bodyDamage,
    this.legDamage,
  });

  factory DamageRanges.fromJson(Map<String, dynamic> json) =>
      _$DamageRangesFromJson(json);

  Map<String, dynamic> toJson() => _$DamageRangesToJson(this);

  @override
  List<Object?> get props =>
      [rangeStartMeters, rangeEndMeters, headDamage, bodyDamage, legDamage];

  DamageRanges copyWith({
    int? rangeStartMeters,
    int? rangeEndMeters,
    int? headDamage,
    int? bodyDamage,
    double? legDamage,
  }) {
    return DamageRanges(
      rangeStartMeters: rangeStartMeters ?? this.rangeStartMeters,
      rangeEndMeters: rangeEndMeters ?? this.rangeEndMeters,
      headDamage: headDamage ?? this.headDamage,
      bodyDamage: bodyDamage ?? this.bodyDamage,
      legDamage: legDamage ?? this.legDamage,
    );
  }
}

@JsonSerializable()
class ShopData with EquatableMixin {
  int? cost;
  String? category;
  String? categoryText;
  GridPosition? gridPosition;
  bool? canBeTrashed;
  String? newImage;
  String? assetPath;

  ShopData({
    this.cost,
    this.category,
    this.categoryText,
    this.gridPosition,
    this.canBeTrashed,
    this.newImage,
    this.assetPath,
  });

  factory ShopData.fromJson(Map<String, dynamic> json) =>
      _$ShopDataFromJson(json);

  Map<String, dynamic> toJson() => _$ShopDataToJson(this);

  @override
  List<Object?> get props => [
        cost,
        category,
        categoryText,
        gridPosition,
        canBeTrashed,
        newImage,
        assetPath
      ];

  ShopData copyWith({
    int? cost,
    String? category,
    String? categoryText,
    GridPosition? gridPosition,
    bool? canBeTrashed,
    String? newImage,
    String? assetPath,
  }) {
    return ShopData(
      cost: cost ?? this.cost,
      category: category ?? this.category,
      categoryText: categoryText ?? this.categoryText,
      gridPosition: gridPosition ?? this.gridPosition,
      canBeTrashed: canBeTrashed ?? this.canBeTrashed,
      newImage: newImage ?? this.newImage,
      assetPath: assetPath ?? this.assetPath,
    );
  }
}

@JsonSerializable()
class GridPosition with EquatableMixin {
  int? row;
  int? column;

  GridPosition({
    this.row,
    this.column,
  });

  factory GridPosition.fromJson(Map<String, dynamic> json) =>
      _$GridPositionFromJson(json);

  Map<String, dynamic> toJson() => _$GridPositionToJson(this);

  @override
  List<Object?> get props => [row, column];

  GridPosition copyWith({
    int? row,
    int? column,
  }) {
    return GridPosition(
      row: row ?? this.row,
      column: column ?? this.column,
    );
  }
}

@JsonSerializable()
class Skins with EquatableMixin {
  String? uuid;
  String? displayName;
  String? themeUuid;
  String? contentTierUuid;
  String? displayIcon;
  String? assetPath;
  List<Chromas>? chromas;
  List<Levels>? levels;

  Skins({
    this.uuid,
    this.displayName,
    this.themeUuid,
    this.contentTierUuid,
    this.displayIcon,
    this.assetPath,
    this.chromas,
    this.levels,
  });

  factory Skins.fromJson(Map<String, dynamic> json) => _$SkinsFromJson(json);

  Map<String, dynamic> toJson() => _$SkinsToJson(this);

  @override
  List<Object?> get props => [
        uuid,
        displayName,
        themeUuid,
        contentTierUuid,
        displayIcon,
        assetPath,
        chromas,
        levels
      ];

  Skins copyWith({
    String? uuid,
    String? displayName,
    String? themeUuid,
    String? contentTierUuid,
    String? displayIcon,
    String? assetPath,
    List<Chromas>? chromas,
    List<Levels>? levels,
  }) {
    return Skins(
      uuid: uuid ?? this.uuid,
      displayName: displayName ?? this.displayName,
      themeUuid: themeUuid ?? this.themeUuid,
      contentTierUuid: contentTierUuid ?? this.contentTierUuid,
      displayIcon: displayIcon ?? this.displayIcon,
      assetPath: assetPath ?? this.assetPath,
      chromas: chromas ?? this.chromas,
      levels: levels ?? this.levels,
    );
  }
}

@JsonSerializable()
class Chromas with EquatableMixin {
  String? uuid;
  String? displayName;
  String? fullRender;
  String? assetPath;

  Chromas({
    this.uuid,
    this.displayName,
    this.fullRender,
    this.assetPath,
  });

  factory Chromas.fromJson(Map<String, dynamic> json) =>
      _$ChromasFromJson(json);

  Map<String, dynamic> toJson() => _$ChromasToJson(this);

  @override
  List<Object?> get props => [uuid, displayName, fullRender, assetPath];

  Chromas copyWith({
    String? uuid,
    String? displayName,
    String? fullRender,
    String? assetPath,
  }) {
    return Chromas(
      uuid: uuid ?? this.uuid,
      displayName: displayName ?? this.displayName,
      fullRender: fullRender ?? this.fullRender,
      assetPath: assetPath ?? this.assetPath,
    );
  }
}

@JsonSerializable()
class Levels with EquatableMixin {
  String? uuid;
  String? displayName;
  String? displayIcon;
  String? assetPath;

  Levels({
    this.uuid,
    this.displayName,
    this.displayIcon,
    this.assetPath,
  });

  factory Levels.fromJson(Map<String, dynamic> json) => _$LevelsFromJson(json);

  Map<String, dynamic> toJson() => _$LevelsToJson(this);

  @override
  List<Object?> get props => [uuid, displayName, displayIcon, assetPath];

  Levels copyWith({
    String? uuid,
    String? displayName,
    String? displayIcon,
    String? assetPath,
  }) {
    return Levels(
      uuid: uuid ?? this.uuid,
      displayName: displayName ?? this.displayName,
      displayIcon: displayIcon ?? this.displayIcon,
      assetPath: assetPath ?? this.assetPath,
    );
  }
}
