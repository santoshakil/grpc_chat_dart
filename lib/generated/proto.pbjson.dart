///
//  Generated code. Do not modify.
//  source: proto.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use personDescriptor instead')
const Person$json = const {
  '1': 'Person',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'id', '3': 2, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `Person`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List personDescriptor = $convert.base64Decode('CgZQZXJzb24SEgoEbmFtZRgBIAEoCVIEbmFtZRIOCgJpZBgCIAEoBVICaWQ=');
@$core.Deprecated('Use messageDescriptor instead')
const Message$json = const {
  '1': 'Message',
  '2': const [
    const {'1': 'text', '3': 1, '4': 1, '5': 9, '10': 'text'},
    const {'1': 'from', '3': 2, '4': 1, '5': 11, '6': '.grpc_chat.Person', '10': 'from'},
    const {'1': 'to', '3': 3, '4': 1, '5': 11, '6': '.grpc_chat.Person', '10': 'to'},
    const {'1': 'timestamp', '3': 4, '4': 1, '5': 9, '10': 'timestamp'},
  ],
};

/// Descriptor for `Message`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageDescriptor = $convert.base64Decode('CgdNZXNzYWdlEhIKBHRleHQYASABKAlSBHRleHQSJQoEZnJvbRgCIAEoCzIRLmdycGNfY2hhdC5QZXJzb25SBGZyb20SIQoCdG8YAyABKAsyES5ncnBjX2NoYXQuUGVyc29uUgJ0bxIcCgl0aW1lc3RhbXAYBCABKAlSCXRpbWVzdGFtcA==');
@$core.Deprecated('Use messageListDescriptor instead')
const MessageList$json = const {
  '1': 'MessageList',
  '2': const [
    const {'1': 'messages', '3': 1, '4': 3, '5': 11, '6': '.grpc_chat.Message', '10': 'messages'},
  ],
};

/// Descriptor for `MessageList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageListDescriptor = $convert.base64Decode('CgtNZXNzYWdlTGlzdBIuCghtZXNzYWdlcxgBIAMoCzISLmdycGNfY2hhdC5NZXNzYWdlUghtZXNzYWdlcw==');
@$core.Deprecated('Use emptyDescriptor instead')
const Empty$json = const {
  '1': 'Empty',
};

/// Descriptor for `Empty`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyDescriptor = $convert.base64Decode('CgVFbXB0eQ==');
