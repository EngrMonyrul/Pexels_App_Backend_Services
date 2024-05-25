part of '../../../pexels_services.dart';

class _PhotoProviderImpl extends PhotosProvider {
  _PhotoProviderImpl() : _photosRepo = getIt.get<PhotosRepo>();

  final PhotosRepo _photosRepo;

  @override
  Future<void> setPerPage(
      {required int totalPage, required int perPageItem}) async {
    final response = await _photosRepo.fetchPerPagePhotos(
        totalPage: totalPage, perPageItem: perPageItem);
    if (response.payload != null) {
      _perPage = response.payload;
    }
    notifyListeners();
  }
}
