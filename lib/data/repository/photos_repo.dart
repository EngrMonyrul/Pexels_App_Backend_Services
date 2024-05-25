part of '../../pexels_services.dart';

@LazySingleton()
class PhotosRepo {
  PhotosRepo(this._apiClient);

  final ApiClient _apiClient;

  Future<BaseResponse<PerPage>> fetchPerPagePhotos(
      {required int totalPage, required int perPageItem}) async {
    return _apiClient
        .fetchPerPagePhoto(totalPage, perPageItem)
        .then((value) => value)
        .onError(ErrorHandling.error);
  }
}
