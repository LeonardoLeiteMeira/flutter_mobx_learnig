// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../controller/list_controller.dart' as _i5;
import '../../controller/login_controller.dart' as _i6;
import '../ILoginRepository.dart' as _i3;
import '../LoginRepository.dart' as _i4; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.ILoginRepository>(() => _i4.LoginRepository());
  gh.lazySingleton<_i5.ListItemController>(() => _i5.ListItemController());
  gh.lazySingleton<_i6.LoginController>(
      () => _i6.LoginController(get<_i3.ILoginRepository>()));
  return get;
}
