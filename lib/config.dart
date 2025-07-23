class TrackMapConfig {
  static const backendUrl = String.fromEnvironment(
    "TRACKMAP_BACKEND",
    defaultValue: "https://trackmap.jfdev.de",
  );
}
