part of '../../pexels_services.dart';

///----------------------------------------------
/// ### Local Storage
/// __This storage store data in device storage__
///
/// __Using Package__
/// [GetStorage]
///
/// __Return__
/// [getBaseUrl]
///----------------------------------------------
abstract class LocalStorage {
  /*-------------------> getter methods <-------------------*/
  String get getBaseUrl;
  String get getApiKey;

  /*-------------------> setter methods <-------------------*/
  void setBaseUrl({required String value});
  void setApiKey({required String value});
}
