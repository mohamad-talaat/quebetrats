import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:quebetrats/core/class/statusrequest.dart';
import 'package:quebetrats/core/functions/ckeckInternet.dart';
import 'package:http/http.dart ' as http;

class Crud {
  Future<Either<StatusRequest, Map>> postData(String linkurl, Map data) async {
    try {
      if (await checkTheInternet()) {
        var response = await http.post(Uri.parse(linkurl), body: data);
        if (response.statusCode == 200 || response.statusCode == 201) {
          var responsebody = jsonDecode(response.body);
          debugPrint(responsebody);
          return Right(responsebody);
        } else {
          return const Left(StatusRequest.serverfailure);
        }
      } else {
        return const Left(StatusRequest.offline);
      }
    } catch (_) {
      debugPrint("problem here >>>>>in php or mysql   ");
      return const Left(StatusRequest.failure);
    }
  }
}
