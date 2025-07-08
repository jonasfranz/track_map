class AppVersion {
  final String version;
  final String buildVersion;
  final String date;
  final String downloadURL;
  final int size;
  final String? minOSVersion;

  const AppVersion({
    required this.version,
    required this.buildVersion,
    required this.date,
    required this.downloadURL,
    required this.size,
    this.minOSVersion,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['version'] = version;
    data['date'] = date;
    data['downloadURL'] = downloadURL;
    data['buildVersion'] = buildVersion;
    data['size'] = size;
    data['minOSVersion'] = minOSVersion;
    return data;
  }

  @override
  String toString() {
    return 'AppVersion{version: $version, buildVersion: $buildVersion, date: $date, downloadURL: $downloadURL, size: $size, minOSVersion: $minOSVersion}';
  }
}
