// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:openrailwaymap_api/openrailwaymap_api.dart' as _i95;
import 'package:track_map/screens/map/map_view_model.dart' as _i856;
import 'package:track_map/screens/search/map_search_bar_controller.dart'
    as _i604;
import 'package:track_map/services/location_service.dart' as _i55;
import 'package:track_map/services/map_sync_service.dart' as _i395;
import 'package:track_map/services/open_railway_map_styles_service.dart'
    as _i952;
import 'package:track_map/services/search_service.dart' as _i165;
import 'package:track_map/services/temp_file_service.dart' as _i624;
import 'package:track_map/track_map_module.dart' as _i998;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final trackMapModule = _$TrackMapModule();
    gh.factory<_i361.Dio>(() => trackMapModule.dio);
    gh.factory<_i55.LocationService>(() => _i55.LocationService());
    gh.factory<_i395.MapSyncService>(() => _i395.MapSyncService());
    gh.singleton<_i624.TempFileService>(() => trackMapModule.tempFileService);
    gh.singleton<_i95.SearchApi>(() => trackMapModule.searchApi);
    gh.singleton<_i952.OpenRailwayMapStylesService>(
      () => _i952.OpenRailwayMapStylesService(
        gh<_i361.Dio>(),
        gh<_i624.TempFileService>(),
      ),
    );
    gh.singleton<_i165.SearchService>(
      () => _i165.SearchService(gh<_i95.SearchApi>()),
    );
    gh.factory<_i856.MapViewModel>(
      () => _i856.MapViewModel(
        gh<_i952.OpenRailwayMapStylesService>(),
        gh<_i395.MapSyncService>(),
        gh<_i55.LocationService>(),
      ),
    );
    gh.factory<_i604.MapSearchBarController>(
      () => _i604.MapSearchBarController(gh<_i165.SearchService>()),
    );
    return this;
  }
}

class _$TrackMapModule extends _i998.TrackMapModule {}
