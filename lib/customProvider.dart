
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:motoveys/dio.dart';

class AppState extends ChangeNotifier {
  Dio dio = DioSingleton.dio;
 
  var _mobileNumber;
  var _employeeNo;
  
  String _accessToken = '';
 
 
  
 
  
  get employeeNo => _employeeNo;

  get mobileNumber => _mobileNumber;
  get accessToken => _accessToken;
 
 
  
  
 
  void updateVariables({mobileNumber, employeeNo, userId, otp, email}) {
    if (mobileNumber != null) {
      _mobileNumber = mobileNumber;
    }
    if (employeeNo != null) {
      _employeeNo = employeeNo;
    }
notifyListeners();
    }
    
  
  Future<void> createToken() async{
   
  
    Map<String, String> headers = {
      'Content-Type': 'application/json; charset=UTF-8',
      "Accept": "application/json",
     
    };
    Map<String, dynamic> postData = {
      "base64IV": "qhY2M/OQdW/rpNqm",
    "encryptedData": "mJ7NOLTpxmgG1gECQLvp6yV9Fqq3UfMVVvCXUyVRm6ZipQext1bMaYEZJngcqTMMSJhZ8Nza1Uwrh2RoY1TLL0ZcAuyVyeHJD+6678uPZBQm",
    "key": "b/QZEtoBCvOkUWUnunndEc03FM8jACF/+zafLD+Ncp4="
    };
 
    try {
      final response = await dio.post(
          'https://cafe.sbigeneral.in/Cafe/token',
          data: postData,
          options: Options(headers: headers));

      print(response.data);
   
      var data = jsonDecode(response.data);
      _accessToken = data['token'];
    // ignore: empty_catches
    } catch (error) {
      
      
    }
  }

}  

 