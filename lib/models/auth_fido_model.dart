// To parse this JSON data, do
//
//     final authFidoModel = authFidoModelFromJson(jsonString);

import 'dart:convert';

AuthFidoModel authFidoModelFromJson(String str) =>
    AuthFidoModel.fromJson(json.decode(str));

String authFidoModelToJson(AuthFidoModel data) => json.encode(data.toJson());

class AuthFidoModel {
  AuthFidoModel({
    this.qrCode,
    this.authenticator,
  });

  QrCode? qrCode;
  Authenticator? authenticator;

  factory AuthFidoModel.fromJson(Map<String, dynamic> json) => AuthFidoModel(
        qrCode: json["QrCode"] == null ? null : QrCode.fromJson(json["QrCode"]),
        authenticator: json["Authenticator"] == null
            ? null
            : Authenticator.fromJson(json["Authenticator"]),
      );

  Map<String, dynamic> toJson() => {
        "QrCode": qrCode == null ? null : qrCode?.toJson(),
        "Authenticator": authenticator == null ? null : authenticator?.toJson(),
      };
}

class Authenticator {
  Authenticator({
    this.id,
    this.aaid,
    this.signAlgo,
    this.pubkeyAlgo,
    this.activate,
    this.deviceName,
    this.deviceId,
    this.registerAt,
    this.usedAt,
    this.qrCodeId,
  });

  String? id;
  String? aaid;
  int? signAlgo;
  int? pubkeyAlgo;
  bool? activate;
  String? deviceName;
  String? deviceId;
  String? registerAt;
  UsedAt? usedAt;
  String? qrCodeId;

  factory Authenticator.fromJson(Map<String, dynamic> json) => Authenticator(
        id: json["id"] == null ? null : json["id"],
        aaid: json["aaid"] == null ? null : json["aaid"],
        signAlgo: json["sign_algo"] == null ? null : json["sign_algo"],
        pubkeyAlgo: json["pubkey_algo"] == null ? null : json["pubkey_algo"],
        activate: json["activate"] == null ? null : json["activate"],
        deviceName: json["device_name"] == null ? null : json["device_name"],
        deviceId: json["device_id"] == null ? null : json["device_id"],
        registerAt: json["register_at"] == null ? null : json["register_at"],
        usedAt: json["UsedAt"] == null ? null : UsedAt.fromJson(json["UsedAt"]),
        qrCodeId: json["qr_code_id"] == null ? null : json["qr_code_id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "aaid": aaid == null ? null : aaid,
        "sign_algo": signAlgo == null ? null : signAlgo,
        "pubkey_algo": pubkeyAlgo == null ? null : pubkeyAlgo,
        "activate": activate == null ? null : activate,
        "device_name": deviceName == null ? null : deviceName,
        "device_id": deviceId == null ? null : deviceId,
        "register_at": registerAt == null ? null : registerAt,
        "UsedAt": usedAt == null ? null : usedAt?.toJson(),
        "qr_code_id": qrCodeId == null ? null : qrCodeId,
      };
}

class UsedAt {
  UsedAt({
    this.time,
    this.valid,
  });

  String? time;
  bool? valid;

  factory UsedAt.fromJson(Map<String, dynamic> json) => UsedAt(
        time: json["Time"] == null ? null : json["Time"],
        valid: json["Valid"] == null ? null : json["Valid"],
      );

  Map<String, dynamic> toJson() => {
        "Time": time == null ? null : time,
        "Valid": valid == null ? null : valid,
      };
}

class QrCode {
  QrCode({
    this.id,
    this.op,
    this.accountId,
    this.account,
    this.sessionId,
    this.session,
    this.createdAt,
    this.usedAt,
    this.revokedAt,
    this.status,
    this.oidcClientId,
    this.transaction,
  });

  String? id;
  String? op;
  String? accountId;
  Account? account;
  String? sessionId;
  Account? session;
  String? createdAt;
  UsedAt? usedAt;
  dynamic revokedAt;
  String? status;
  String? oidcClientId;
  String? transaction;

  factory QrCode.fromJson(Map<String, dynamic> json) => QrCode(
        id: json["ID"] == null ? null : json["ID"],
        op: json["Op"] == null ? null : json["Op"],
        accountId: json["AccountID"] == null ? null : json["AccountID"],
        account:
            json["Account"] == null ? null : Account.fromJson(json["Account"]),
        sessionId: json["SessionID"] == null ? null : json["SessionID"],
        session:
            json["Session"] == null ? null : Account.fromJson(json["Session"]),
        createdAt: json["CreatedAt"] == null ? null : json["CreatedAt"],
        usedAt: json["UsedAt"] == null ? null : UsedAt.fromJson(json["UsedAt"]),
        revokedAt: json["RevokedAt"],
        status: json["Status"] == null ? null : json["Status"],
        oidcClientId:
            json["OidcClientId"] == null ? null : json["OidcClientId"],
        transaction: json["Transaction"] == null ? null : json["Transaction"],
      );

  Map<String, dynamic> toJson() => {
        "ID": id == null ? null : id,
        "Op": op == null ? null : op,
        "AccountID": accountId == null ? null : accountId,
        "Account": account == null ? null : account?.toJson(),
        "SessionID": sessionId == null ? null : sessionId,
        "Session": session == null ? null : session?.toJson(),
        "CreatedAt": createdAt == null ? null : createdAt,
        "UsedAt": usedAt == null ? null : usedAt?.toJson(),
        "RevokedAt": revokedAt,
        "Status": status == null ? null : status,
        "OidcClientId": oidcClientId == null ? null : oidcClientId,
        "Transaction": transaction == null ? null : transaction,
      };
}

class Account {
  Account({
    this.id,
    this.allowExpireDate,
  });

  String? id;
  int? allowExpireDate;

  factory Account.fromJson(Map<String, dynamic> json) => Account(
        id: json["ID"] == null ? null : json["ID"],
        allowExpireDate: json["allow_expire_date"] == null
            ? null
            : json["allow_expire_date"],
      );

  Map<String, dynamic> toJson() => {
        "ID": id == null ? null : id,
        "allow_expire_date": allowExpireDate == null ? null : allowExpireDate,
      };
}
