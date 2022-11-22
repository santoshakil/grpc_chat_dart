///
//  Generated code. Do not modify.
//  source: proto.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'proto.pb.dart' as $0;
export 'proto.pb.dart';

class MessageServiceClient extends $grpc.Client {
  static final _$getMessages = $grpc.ClientMethod<$0.Person, $0.MessageList>(
      '/grpc_chat.MessageService/GetMessages',
      ($0.Person value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.MessageList.fromBuffer(value));
  static final _$getMessage = $grpc.ClientMethod<$0.Person, $0.Message>(
      '/grpc_chat.MessageService/GetMessage',
      ($0.Person value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Message.fromBuffer(value));
  static final _$sendMessage = $grpc.ClientMethod<$0.Message, $0.Empty>(
      '/grpc_chat.MessageService/SendMessage',
      ($0.Message value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));

  MessageServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$0.MessageList> getMessages($0.Person request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$getMessages, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<$0.Message> getMessage($0.Person request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$getMessage, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<$0.Empty> sendMessage($0.Message request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$sendMessage, $async.Stream.fromIterable([request]),
        options: options);
  }
}

abstract class MessageServiceBase extends $grpc.Service {
  $core.String get $name => 'grpc_chat.MessageService';

  MessageServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Person, $0.MessageList>(
        'GetMessages',
        getMessages_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.Person.fromBuffer(value),
        ($0.MessageList value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Person, $0.Message>(
        'GetMessage',
        getMessage_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.Person.fromBuffer(value),
        ($0.Message value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Message, $0.Empty>(
        'SendMessage',
        sendMessage_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.Message.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
  }

  $async.Stream<$0.MessageList> getMessages_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Person> request) async* {
    yield* getMessages(call, await request);
  }

  $async.Stream<$0.Message> getMessage_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Person> request) async* {
    yield* getMessage(call, await request);
  }

  $async.Stream<$0.Empty> sendMessage_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Message> request) async* {
    yield* sendMessage(call, await request);
  }

  $async.Stream<$0.MessageList> getMessages(
      $grpc.ServiceCall call, $0.Person request);
  $async.Stream<$0.Message> getMessage(
      $grpc.ServiceCall call, $0.Person request);
  $async.Stream<$0.Empty> sendMessage(
      $grpc.ServiceCall call, $0.Message request);
}

class AuthServiceClient extends $grpc.Client {
  static final _$register = $grpc.ClientMethod<$0.Person, $0.Token>(
      '/grpc_chat.AuthService/Register',
      ($0.Person value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Token.fromBuffer(value));
  static final _$login = $grpc.ClientMethod<$0.Person, $0.Token>(
      '/grpc_chat.AuthService/Login',
      ($0.Person value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Token.fromBuffer(value));

  AuthServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.Token> register($0.Person request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$register, request, options: options);
  }

  $grpc.ResponseFuture<$0.Token> login($0.Person request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$login, request, options: options);
  }
}

abstract class AuthServiceBase extends $grpc.Service {
  $core.String get $name => 'grpc_chat.AuthService';

  AuthServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Person, $0.Token>(
        'Register',
        register_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Person.fromBuffer(value),
        ($0.Token value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Person, $0.Token>(
        'Login',
        login_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Person.fromBuffer(value),
        ($0.Token value) => value.writeToBuffer()));
  }

  $async.Future<$0.Token> register_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Person> request) async {
    return register(call, await request);
  }

  $async.Future<$0.Token> login_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Person> request) async {
    return login(call, await request);
  }

  $async.Future<$0.Token> register($grpc.ServiceCall call, $0.Person request);
  $async.Future<$0.Token> login($grpc.ServiceCall call, $0.Person request);
}
