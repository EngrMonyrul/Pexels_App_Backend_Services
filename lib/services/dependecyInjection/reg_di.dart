part of '../../pexels_services.dart';

Future<void> _regDi({required String baseUrl, required String apiKey}) async {
  getIt.registerLazySingleton<LocalStorage>(() => _LocalStorageImpl());
  /*-------------------> registering dio <-------------------*/
  getIt.registerLazySingleton<ApiClient>(
    () => ApiClient(
      Dio(
        BaseOptions(
          baseUrl: baseUrl,
        ),
      )..interceptors.add(CustomInterceptors(apiKey: apiKey)),
    ),
  );
}
