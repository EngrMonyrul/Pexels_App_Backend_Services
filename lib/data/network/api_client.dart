import 'package:dio/dio.dart';
import 'package:pexels_services/data/models/base_response.dart';
import 'package:pexels_services/data/models/photos/per_page.dart';
import 'package:retrofit/http.dart';

part 'api_client.g.dart';

@RestApi()
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET("curated?page={totalPage}&per_page={perPageItem}")
  Future<BaseResponse<PerPage>> fetchPerPagePhoto(
      @Path() int totalPage, @Path() int perPageItem);
}
