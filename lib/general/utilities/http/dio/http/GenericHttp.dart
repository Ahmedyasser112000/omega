import 'package:base_flutter/general/utilities/http/dio/dio_helper.dart';
import 'package:flutter/material.dart';

enum ReturnType { Model, List, Type }
enum MethodType { Get, Post, Put, Patch, Delete }

class GenericHttp<T> {
  final BuildContext context;

  GenericHttp(this.context);

  Future<dynamic> callApi(
      {required ReturnType returnType,
      required MethodType methodType,
      required String name,
      Function(dynamic data)? returnDataFun,
      Map<String, dynamic>? json,
      bool? showLoader,
      Function(dynamic data)? toJsonFunc,
      bool refresh = true}) async {
    var dataJson = json ?? {};
    dataJson.addAll({"lang": DioUtils.lang});

    switch (methodType) {
      case MethodType.Get:
        return _getData(
            name: name,
            returnType: returnType,
            refresh: refresh,
            dataKeyFun: returnDataFun,
            toJsonFunc: toJsonFunc,
            json: dataJson);
      case MethodType.Post:
        return _postData(
            name: name,
            returnType: returnType,
            json: dataJson,
            showLoader: showLoader,
            dataKeyFun: returnDataFun,
            toJsonFunc: toJsonFunc);
      case MethodType.Patch:
        return _patchData(
            name: name,
            returnType: returnType,
            json: dataJson,
            showLoader: showLoader,
            dataKeyFun: returnDataFun,
            toJsonFunc: toJsonFunc);
      case MethodType.Put:
        return _putData(
            name: name,
            returnType: returnType,
            json: dataJson,
            showLoader: showLoader,
            dataKeyFun: returnDataFun,
            toJsonFunc: toJsonFunc);
      case MethodType.Delete:
        return _deleteData(
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
    Map<String, dynamic> json = const {},
    required String name,
    Function(dynamic data)? dataKeyFun,
    bool refresh = true,
    Function(dynamic data)? toJsonFunc,
  }) async {
    var data = await DioHelper(context: context, forceRefresh: refresh).get(
      url: name, data: json,
    );
    return _returnDataFromType(
        data, returnType, toJsonFunc ?? (val) {}, dataKeyFun);
  }
  Future<dynamic> _postData({
    required ReturnType returnType,
    required String name,
    Function(dynamic data)? dataKeyFun,
    Map<String, dynamic> json = const {},
    bool? showLoader,
    Function(dynamic data)? toJsonFunc,
  }) async {
    var data = await DioHelper(
      context: context,
    ).post(url: name, body: json, showLoader: showLoader ?? true);
    return _returnDataFromType(
        data, returnType, toJsonFunc ?? (val) {}, dataKeyFun);
  }

  Future<dynamic> _putData({
    required ReturnType returnType,
    required String name,
    Function(dynamic data)? dataKeyFun,
    Map<String, dynamic> json = const {},
    bool? showLoader,
    Function(dynamic data)? toJsonFunc,
  }) async {
    var data = await DioHelper(
      context: context,
    ).put(url: name, body: json, showLoader: showLoader ?? true);
    return _returnDataFromType(
        data, returnType, toJsonFunc ?? (val) {}, dataKeyFun);
  }

  Future<dynamic> _patchData({
    required ReturnType returnType,
    required String name,
    Function(dynamic data)? dataKeyFun,
    Map<String, dynamic> json = const {},
    bool? showLoader,
    Function(dynamic data)? toJsonFunc,
  }) async {
    var data = await DioHelper(
      context: context,
    ).patch(url: name, body: json, showLoader: showLoader ?? true);
    return _returnDataFromType(
        data, returnType, toJsonFunc ?? (val) {}, dataKeyFun);
  }

  Future<dynamic> _deleteData({
    required ReturnType returnType,
    required String name,
    Function(dynamic data)? dataKeyFun,
    Map<String, dynamic> json = const {},
    bool? showLoader,
    Function(dynamic data)? toJsonFunc,
  }) async {
    var data = await DioHelper(
      context: context,
    ).delete(url: name, body: json, showLoader: showLoader ?? true);
    return _returnDataFromType(
        data, returnType, toJsonFunc ?? (val) {}, dataKeyFun);
  }

  dynamic _returnDataFromType(
    dynamic data,
    ReturnType returnType,
    Function(dynamic data) toJsonFunc,
    Function(dynamic data)? dataKeyFun,
  ) async {
    switch (returnType) {
      case ReturnType.Type:
        return dataKeyFun == null ? data : Function.apply(dataKeyFun, [data]);
      case ReturnType.Model:
        return Function.apply(toJsonFunc, [
          dataKeyFun == null ? data : Function.apply(dataKeyFun, [data])
        ]);
      case ReturnType.Model:
        return;
      case ReturnType.List:
        return List<T>.from(
          dataKeyFun == null
              ? data
              : Function.apply(dataKeyFun, [data]).map(
                  (e) => Function.apply(toJsonFunc, [e]),
                ),
        );
    }
  }
}
