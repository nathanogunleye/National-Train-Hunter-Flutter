import 'package:dio/dio.dart';
import 'package:national_train_hunter/constants/text_constants.dart';
import 'package:national_train_hunter/model/service_departure.dart';
import 'package:retrofit/retrofit.dart';

part 'service_departure_api.g.dart';

@RestApi(baseUrl: kBaseUrl)
abstract class ServiceDepartureAPI {
  factory ServiceDepartureAPI(Dio dio, {String baseUrl}) = _ServiceDepartureAPI;

  @GET("/v1/service/departureBoard")
  Future<List<ServiceDeparture>> getDepartureBoard({
    @Query("numRows") int numRows,
    @Query("crs") String crs,
    @Query("filterCrs") String filterCrs,
    @Query("time") String time,
    @Query("timeWindow") int timeWindow,
    @Query("filterType") String filterType,
  });
}
