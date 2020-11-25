import 'package:chopper/chopper.dart';

part 'chopper.chopper.dart';

@ChopperApi(baseUrl: '')
abstract class API extends ChopperService {
  @Get()
  Future<Response> getter();

  static API create() {
    final client = ChopperClient(
        baseUrl: '', services: [_$API()], converter: JsonConverter());

    return _$API(client);
  }
}
