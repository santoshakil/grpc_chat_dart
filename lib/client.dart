import 'package:grpc/grpc.dart';

import 'generated/proto.pbgrpc.dart';

Future<void> runClient(List<String> arguments) async {
  final client = MessageServiceClient(
    ClientChannel(
      'localhost',
      port: 50051,
      options: const ChannelOptions(
        credentials: ChannelCredentials.insecure(),
      ),
    ),
  );
  final person = Person()..name = 'Dart';
  final message = Message()
    ..text = 'Hello, ${person.name}!'
    ..timestamp = DateTime.now().toUtc().toIso8601String();
  final messageStream = client.getMessage(person);
  final messagesStream = client.getMessages(person);
  client.sendMessage(message);
  print('Message: ${await messageStream.first}');
  print('Messages: ${await messagesStream.first}');
}
