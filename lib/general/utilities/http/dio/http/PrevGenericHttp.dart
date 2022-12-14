import 'package:base_flutter/general/utilities/http/dio/dio_helper/DioImports.dart';
import 'package:base_flutter/general/utilities/http/dio/utils/DioUtils.dart';
import 'package:flutter/material.dart';

enum ReturnType { Model, List, Type }
enum MethodType { Get, Post, UploadFile }

class PrevGenericHttp<T>{
  final BuildContext context;

  PrevGenericHttp(this.context);

  Future<dynamic> callApi(
      {required ReturnType returnType,
        required MethodType methodType,
        required String name,
        Function(dynamic data)? returnDataFun,
        Map<String, dynamic>? json,
        bool? showLoader,
        Function(dynamic data)? toJsonFunc,
        bool refresh = true}) async {
    var dataJson = json??{};
    dataJson.addAll({"lang": DioUtils.lang});

    switch (methodType) {
      case MethodType.Get:
        return _getData(
            name: name,
            returnType: returnType,
            json: dataJson,
            refresh: refresh,
            dataKeyFun: returnDataFun,
            toJsonFunc: toJsonFunc);
      case MethodType.Post:
        return _postData(
            name: name,
            returnType: returnType,
            json: dataJson,
            showLoader: showLoader,
            dataKeyFun: returnDataFun,
            toJsonFunc: toJsonFunc);
      case MethodType.UploadFile:
        return _uploadData(
            name: name,
            returnType: returnType,
            json: dataJson,
            showLoader: showLoader,
            dataKeyFun: returnDataFun,
            toJsonFunc: toJsonFunc);
    }
  }

  Future<dynamic> _getData({
    required ReturnType returnType,
    required String name,
    Function(dynamic data)? dataKeyFun,
    Map<String, dynamic> json = const {},
    bool refresh = true,
    Function(dynamic data)? toJsonFunc,
  }) async {
    var data = await PrevDioHelper(context: context, forceRefresh: refresh)
        .get(url: name);
    return _returnDataFromType(
        data, returnType, toJsonFunc ?? (val) {},dataKeyFun);
  }

  Future<dynamic> _postData({
    required ReturnType returnType,
    required String name,
    Function(dynamic data)? dataKeyFun,
    Map<String, dynamic> json = const {},
    bool? showLoader,
    Function(dynamic data)? toJsonFunc,
  }) async {
    var data = await PrevDioHelper(
      context: context,
    ).post(url: name, body: json, showLoader: showLoader ?? true);
    return _returnDataFromType(
        data, returnType, toJsonFunc ?? (val) {},dataKeyFun);
  }

  Future<dynamic> _uploadData({
    required ReturnType returnType,
    required String name,
    Function(dynamic data)?  dataKeyFun,
    Map<String, dynamic> json = const {},
    bool? showLoader,
    Function(dynamic data)? toJsonFunc,
  }) async {
    var data = await PrevDioHelper(
      context: context,
    ).uploadFile(url: name, body: json, showLoader: showLoader ?? true);
    return _returnDataFromType(
        data, returnType, toJsonFunc ?? (val) {},dataKeyFun);
  }

  dynamic _returnDataFromType(
      dynamic data,
      ReturnType returnType,
      Function(dynamic data) toJsonFunc,
      Function(dynamic data)? dataKeyFun,
      ) async {
    switch (returnType) {
      case ReturnType.Type:
        return dataKeyFun==null?data : Function.apply(dataKeyFun, [data]);
      case ReturnType.Model:
        return  Function.apply(toJsonFunc, [dataKeyFun==null?data:
        Function.apply(dataKeyFun, [data])
        ]);
      case ReturnType.Model:
        return ;
      case ReturnType.List:
        return List<T>.from(
          dataKeyFun==null?data: Function.apply(dataKeyFun, [data]).map(
                (e) => Function.apply(toJsonFunc, [e]),
          ),
        );
    }
  }
}
