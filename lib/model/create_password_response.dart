// To parse this JSON data, do
//
//     final createPasswordModel = createPasswordModelFromJson(jsonString);

import 'dart:convert';

CreatePasswordModel createPasswordModelFromJson(String str) => CreatePasswordModel.fromJson(json.decode(str));

String createPasswordModelToJson(CreatePasswordModel data) => json.encode(data.toJson());

class CreatePasswordModel {
    int success;
    String status;
    String message;
    List<Datum> data;

    CreatePasswordModel({
        required this.success,
        required this.status,
        required this.message,
        required this.data,
    });

    factory CreatePasswordModel.fromJson(Map<String, dynamic> json) => CreatePasswordModel(
        success: json["success"],
        status: json["status"],
        message: json["message"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "success": success,
        "status": status,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class Datum {
    String status;

    Datum({
        required this.status,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        status: json["status"],
    );

    Map<String, dynamic> toJson() => {
        "status": status,
    };
}
