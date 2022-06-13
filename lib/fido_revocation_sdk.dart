library fido_revocation_sdk;

import 'package:fido_revocation_sdk/models/auth_fido_model.dart';
import 'package:dio/dio.dart';

Future<String?> getStatus(String qrCodeToken, String endpointUrl) async {
  try {
    String url = '$endpointUrl$qrCodeToken';
    final response = await Dio().get(url);
    final data = AuthFidoModel.fromJson(response.data);
    String? status = data.qrCode?.status;
    return status;
  } catch (e) {
    print(e);
    return 'error';
  }
}
