part of '../../pexels_services.dart';

///---------------------------------------
/// ### Init Packages
/// __This method will init initializing packages with dependency injection services__
///---------------------------------------
Future<void> initPackages({required String baseUrl}) async {
  await GetStorage.init();
  await _regDi(
          baseUrl: baseUrl,
          apiKey: "xsy4y1E3ngPAVZ70tqIfU91PImdpjPntmVnHc6SaMlvY9EWFstm72h1m")
      .then((_) {
    getIt.get<LocalStorage>()
      ..setBaseUrl(value: baseUrl)
      ..setApiKey(
          value: "xsy4y1E3ngPAVZ70tqIfU91PImdpjPntmVnHc6SaMlvY9EWFstm72h1m");
  });
}
