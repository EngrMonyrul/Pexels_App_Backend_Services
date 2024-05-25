part of '../../../pexels_services.dart';

abstract class PhotosProvider extends ChangeNotifier {
  /*-------------------> variables <-------------------*/
  PerPage? _perPage;

  /*-------------------> getter <-------------------*/
  PerPage? get perPage => _perPage;

  /*-------------------> setter <-------------------*/
  Future<void> setPerPage({required int totalPage, required int perPageItem});
}
