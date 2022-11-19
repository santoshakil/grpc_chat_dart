import 'package:grpc_chat_dart/client.dart';
import 'package:grpc_chat_dart/server.dart';

void main(List<String> arguments) async {
  await runServer(arguments);
  await runClient(arguments);
}
