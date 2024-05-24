part of '../../pexels_services.dart';

class _LocalStorageImpl extends LocalStorage {
  _LocalStorageImpl() : getStorage = GetStorage();

  /*-------------------> storage variable <-------------------*/
  GetStorage getStorage;

  /*-------------------> keys <-------------------*/
  final _baseUrl = "_base_url_";
  final _apiKey = "_api_key_";

  /*-------------------> base url getter and setter <-------------------*/
  @override
  // TODO: implement baseUrl
  String get getBaseUrl => getStorage.read(_baseUrl) ?? "";

  @override
  void setBaseUrl({required String value}) {
    getStorage.write(_baseUrl, value);
  }

  /*-------------------> api key getter and setter <-------------------*/
  @override
  // TODO: implement getApiKey
  String get getApiKey => getStorage.read(_apiKey) ?? "";

  @override
  void setApiKey({required String value}) {
    // TODO: implement setApiKey
    getStorage.write(_apiKey, value);
  }
}
