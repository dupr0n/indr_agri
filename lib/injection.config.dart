// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i15;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i13;
import 'application/thumps/air_temp_watcher/air_temp_watcher_bloc.dart' as _i14;
import 'application/thumps/humidity_watcher/humidity_watcher_bloc.dart' as _i16;
import 'application/thumps/intensity_watcher/intensity_bloc.dart' as _i10;
import 'application/thumps/obj_temp_watcher/obj_temp_bloc.dart' as _i11;
import 'application/thumps/ph_level_watcher/ph_level_bloc.dart' as _i12;
import 'domain/auth/i_auth_facade.dart' as _i6;
import 'domain/thumps/i_thump_repository.dart' as _i8;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i7;
import 'infrastructure/core/firebase_injectable_module.dart' as _i17;
import 'infrastructure/thumps/thump_repository.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<_i3.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i4.FirebaseFirestore>(
      () => firebaseInjectableModule.firestore);
  gh.lazySingleton<_i5.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<_i6.IAuthFacade>(() =>
      _i7.FirebaseAuthFacade(get<_i3.FirebaseAuth>(), get<_i5.GoogleSignIn>()));
  gh.lazySingleton<_i8.IThumpRepository>(
      () => _i9.ThumpRepository(get<_i4.FirebaseFirestore>()));
  gh.factory<_i10.IntensityWatcherBloc>(
      () => _i10.IntensityWatcherBloc(get<_i8.IThumpRepository>()));
  gh.factory<_i11.ObjTempWatcherBloc>(
      () => _i11.ObjTempWatcherBloc(get<_i8.IThumpRepository>()));
  gh.factory<_i12.PhLevelWatcherBloc>(
      () => _i12.PhLevelWatcherBloc(get<_i8.IThumpRepository>()));
  gh.factory<_i13.SignInFormBloc>(
      () => _i13.SignInFormBloc(get<_i6.IAuthFacade>()));
  gh.factory<_i14.AirTempWatcherBloc>(
      () => _i14.AirTempWatcherBloc(get<_i8.IThumpRepository>()));
  gh.factory<_i15.AuthBloc>(() => _i15.AuthBloc(get<_i6.IAuthFacade>()));
  gh.factory<_i16.HumidityWatcherBloc>(
      () => _i16.HumidityWatcherBloc(get<_i8.IThumpRepository>()));
  return get;
}

class _$FirebaseInjectableModule extends _i17.FirebaseInjectableModule {}
