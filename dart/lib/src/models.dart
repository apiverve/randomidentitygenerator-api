/// Response models for the Random Identity Generator API.

/// API Response wrapper.
class RandomidentitygeneratorResponse {
  final String status;
  final dynamic error;
  final RandomidentitygeneratorData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  RandomidentitygeneratorResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory RandomidentitygeneratorResponse.fromJson(Map<String, dynamic> json) => RandomidentitygeneratorResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? RandomidentitygeneratorData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Random Identity Generator API.

class RandomidentitygeneratorData {
  num? count;
  List<RandomidentitygeneratorDataIdentitiesItem>? identities;

  RandomidentitygeneratorData({
    this.count,
    this.identities,
  });

  factory RandomidentitygeneratorData.fromJson(Map<String, dynamic> json) => RandomidentitygeneratorData(
      count: json['count'],
      identities: (json['identities'] as List?)?.map((e) => RandomidentitygeneratorDataIdentitiesItem.fromJson(e)).toList(),
    );
}

class RandomidentitygeneratorDataIdentitiesItem {
  String? name;
  String? username;
  String? email;
  String? phone;
  String? website;
  RandomidentitygeneratorDataIdentitiesItemCompany? company;
  String? gender;
  String? birthdate;
  String? cell;
  String? avatar;

  RandomidentitygeneratorDataIdentitiesItem({
    this.name,
    this.username,
    this.email,
    this.phone,
    this.website,
    this.company,
    this.gender,
    this.birthdate,
    this.cell,
    this.avatar,
  });

  factory RandomidentitygeneratorDataIdentitiesItem.fromJson(Map<String, dynamic> json) => RandomidentitygeneratorDataIdentitiesItem(
      name: json['name'],
      username: json['username'],
      email: json['email'],
      phone: json['phone'],
      website: json['website'],
      company: json['company'] != null ? RandomidentitygeneratorDataIdentitiesItemCompany.fromJson(json['company']) : null,
      gender: json['gender'],
      birthdate: json['birthdate'],
      cell: json['cell'],
      avatar: json['avatar'],
    );
}

class RandomidentitygeneratorDataIdentitiesItemCompany {
  String? name;
  String? catchPhrase;
  String? bs;

  RandomidentitygeneratorDataIdentitiesItemCompany({
    this.name,
    this.catchPhrase,
    this.bs,
  });

  factory RandomidentitygeneratorDataIdentitiesItemCompany.fromJson(Map<String, dynamic> json) => RandomidentitygeneratorDataIdentitiesItemCompany(
      name: json['name'],
      catchPhrase: json['catchPhrase'],
      bs: json['bs'],
    );
}

class RandomidentitygeneratorRequest {
  int? count;
  bool? includeAvatar;

  RandomidentitygeneratorRequest({
    this.count,
    this.includeAvatar,
  });

  Map<String, dynamic> toJson() => {
      if (count != null) 'count': count,
      if (includeAvatar != null) 'includeAvatar': includeAvatar,
    };
}
