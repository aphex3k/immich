//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PurchaseResponse {
  /// Returns a new [PurchaseResponse] instance.
  PurchaseResponse({
    required this.hideBuyButtonForever,
    this.lastTimeHide,
    required this.showBuyButton,
  });

  bool hideBuyButtonForever;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? lastTimeHide;

  bool showBuyButton;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PurchaseResponse &&
    other.hideBuyButtonForever == hideBuyButtonForever &&
    other.lastTimeHide == lastTimeHide &&
    other.showBuyButton == showBuyButton;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (hideBuyButtonForever.hashCode) +
    (lastTimeHide == null ? 0 : lastTimeHide!.hashCode) +
    (showBuyButton.hashCode);

  @override
  String toString() => 'PurchaseResponse[hideBuyButtonForever=$hideBuyButtonForever, lastTimeHide=$lastTimeHide, showBuyButton=$showBuyButton]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'hideBuyButtonForever'] = this.hideBuyButtonForever;
    if (this.lastTimeHide != null) {
      json[r'lastTimeHide'] = this.lastTimeHide!.toUtc().toIso8601String();
    } else {
    //  json[r'lastTimeHide'] = null;
    }
      json[r'showBuyButton'] = this.showBuyButton;
    return json;
  }

  /// Returns a new [PurchaseResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PurchaseResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return PurchaseResponse(
        hideBuyButtonForever: mapValueOfType<bool>(json, r'hideBuyButtonForever')!,
        lastTimeHide: mapDateTime(json, r'lastTimeHide', r''),
        showBuyButton: mapValueOfType<bool>(json, r'showBuyButton')!,
      );
    }
    return null;
  }

  static List<PurchaseResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PurchaseResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PurchaseResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PurchaseResponse> mapFromJson(dynamic json) {
    final map = <String, PurchaseResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PurchaseResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PurchaseResponse-objects as value to a dart map
  static Map<String, List<PurchaseResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PurchaseResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PurchaseResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'hideBuyButtonForever',
    'showBuyButton',
  };
}

