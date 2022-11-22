import 'package:grpc/grpc.dart' as grpc;

import 'generated/proto.pbgrpc.dart';

Future<void> runServer(List<String> arguments) async {
  final server = grpc.Server([MessageService()]);
  await server.serve(port: 50051);
  print('Server listening on port ${server.port}...');
}

class MessageService extends MessageServiceBase {
  @override
  Stream<Message> getMessage(grpc.ServiceCall call, Person request) {
    final message = Message()
      ..timestamp = DateTime.now().toUtc().toIso8601String()
      ..text = 'Hello, ${request.name}!'
      ..to = request;
    return Stream.value(message);
  }

  @override
  Stream<MessageList> getMessages(grpc.ServiceCall call, Person request) {
    return Stream.value(MessageList());
  }

  @override
  Stream<Empty> sendMessage(grpc.ServiceCall call, Message request) {
    return Stream.value(Empty());
  }
}
