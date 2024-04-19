// ignore_for_file: public_member_api_docs, strict_raw_type

import 'dart:developer' as dev;

import 'package:flutter_bloc/flutter_bloc.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    dev.log('[bloc_error] $bloc\nerror: $error\nstacktrace: $stackTrace');
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    dev.log('[bloc_change] $bloc $change');
    super.onChange(bloc, change);
  }
}
