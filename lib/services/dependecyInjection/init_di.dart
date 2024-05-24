import 'package:injectable/injectable.dart';
import 'package:pexels_services/pexels_services.dart';

import 'init_di.config.dart';

///------------------------------
///initializing dependency inject global variable
///------------------------------
@InjectableInit(
  initializerName: "init",
  preferRelativeImports: true,
  asExtension: true,
)
void configureDi() => getIt.init();
