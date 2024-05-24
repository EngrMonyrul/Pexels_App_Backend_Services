library pexels_services;

/*------------------------>
*-------> imported files
<-------------------------*/
import 'dart:convert';
import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';
import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/dio.dart';
import 'data/network/api_client.dart';

/*------------------------>
*-------> exported files
<-------------------------*/
export 'services/dependecyInjection/init_di.dart';
export 'data/network/api_client.dart';
export 'data/models/base_response.dart';

/*------------------------>
*-------> file parts
<-------------------------*/
part 'main_widget.dart';
part 'services/packages/init_packages.dart';
part 'services/dependecyInjection/reg_di.dart';
part 'data/localStorage/local_storage.dart';
part 'data/localStorage/local_storage_impl.dart';
part 'data/network/custom_interceptor.dart';
part 'data/network/error_handling.dart';
part 'utils/enums/response_type.dart';