class AppVersion {
  final int id;
  final String androidVersion;
  final String iosVersion;
  final bool isForcedUpdate;

  AppVersion({
    required this.id,
    required this.androidVersion,
    required this.iosVersion,
    required this.isForcedUpdate,
  });

  // Factory method to create an instance from a map
  factory AppVersion.fromMap(Map<String, dynamic> map) {
    return AppVersion(
      id: map['id'] ?? 0,
      androidVersion: map['android_version'] ?? '',
      iosVersion: map['ios_version'] ?? '',
      isForcedUpdate: map['is_force_update_required'] ?? false,
    );
  }

  // Method to convert an instance to a map
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'android': androidVersion,
      'ios': iosVersion,
      'is_force_update_required': isForcedUpdate,
    };
  }

  // Method to create a copy of the instance with updated values
  AppVersion copyWith({
    int? id,
    String? androidVersion,
    String? iosVersion,
    bool? isForcedUpdate,
  }) {
    return AppVersion(
      id: id ?? this.id,
      androidVersion: androidVersion ?? this.androidVersion,
      iosVersion: iosVersion ?? this.iosVersion,
      isForcedUpdate: isForcedUpdate ?? this.isForcedUpdate,
    );
  }
}
