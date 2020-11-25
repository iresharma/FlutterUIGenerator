// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chopper.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

class _$API extends API {
  _$API([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  final definitionType = API;

  Future<Response> getter() {
    final $url = '';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }
}
