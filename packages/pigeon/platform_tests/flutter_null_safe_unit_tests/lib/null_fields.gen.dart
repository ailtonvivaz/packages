// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
//
// Autogenerated from Pigeon (v7.0.3), do not edit directly.
// See also: https://pub.dev/packages/pigeon
// ignore_for_file: public_member_api_docs, non_constant_identifier_names, avoid_as, unused_import, unnecessary_parenthesis, prefer_null_aware_operators, omit_local_variable_types, unused_shown_name, unnecessary_import

import 'dart:async';
import 'dart:typed_data' show Float64List, Int32List, Int64List, Uint8List;

import 'package:flutter/foundation.dart' show ReadBuffer, WriteBuffer;
import 'package:flutter/services.dart';

enum NullFieldsSearchReplyType {
  success,
  failure,
}

class NullFieldsSearchRequest {
  NullFieldsSearchRequest({
    this.query,
    required this.identifier,
  });

  String? query;

  int identifier;

  Object encode() {
    return <Object?>[
      query,
      identifier,
    ];
  }

  static NullFieldsSearchRequest decode(Object result) {
    result as List<Object?>;
    return NullFieldsSearchRequest(
      query: result[0] as String?,
      identifier: result[1]! as int,
    );
  }
}

class NullFieldsSearchReply {
  NullFieldsSearchReply({
    this.result,
    this.error,
    this.indices,
    this.request,
    this.type,
  });

  String? result;

  String? error;

  List<int?>? indices;

  NullFieldsSearchRequest? request;

  NullFieldsSearchReplyType? type;

  Object encode() {
    return <Object?>[
      result,
      error,
      indices,
      request?.encode(),
      type?.index,
    ];
  }

  static NullFieldsSearchReply decode(Object result) {
    result as List<Object?>;
    return NullFieldsSearchReply(
      result: result[0] as String?,
      error: result[1] as String?,
      indices: (result[2] as List<Object?>?)?.cast<int?>(),
      request: result[3] != null
          ? NullFieldsSearchRequest.decode(result[3]! as List<Object?>)
          : null,
      type: result[4] != null
          ? NullFieldsSearchReplyType.values[result[4]! as int]
          : null,
    );
  }
}

class _NullFieldsHostApiCodec extends StandardMessageCodec {
  const _NullFieldsHostApiCodec();
  @override
  void writeValue(WriteBuffer buffer, Object? value) {
    if (value is NullFieldsSearchReply) {
      buffer.putUint8(128);
      writeValue(buffer, value.encode());
    } else if (value is NullFieldsSearchRequest) {
      buffer.putUint8(129);
      writeValue(buffer, value.encode());
    } else {
      super.writeValue(buffer, value);
    }
  }

  @override
  Object? readValueOfType(int type, ReadBuffer buffer) {
    switch (type) {
      case 128:
        return NullFieldsSearchReply.decode(readValue(buffer)!);
      case 129:
        return NullFieldsSearchRequest.decode(readValue(buffer)!);
      default:
        return super.readValueOfType(type, buffer);
    }
  }
}

class NullFieldsHostApi {
  /// Constructor for [NullFieldsHostApi].  The [binaryMessenger] named argument is
  /// available for dependency injection.  If it is left null, the default
  /// BinaryMessenger will be used which routes to the host platform.
  NullFieldsHostApi({BinaryMessenger? binaryMessenger})
      : _binaryMessenger = binaryMessenger;
  final BinaryMessenger? _binaryMessenger;

  static const MessageCodec<Object?> codec = _NullFieldsHostApiCodec();

  Future<NullFieldsSearchReply> search(
      NullFieldsSearchRequest arg_nested) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.NullFieldsHostApi.search', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_nested]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else if (replyList[0] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyList[0] as NullFieldsSearchReply?)!;
    }
  }
}

class _NullFieldsFlutterApiCodec extends StandardMessageCodec {
  const _NullFieldsFlutterApiCodec();
  @override
  void writeValue(WriteBuffer buffer, Object? value) {
    if (value is NullFieldsSearchReply) {
      buffer.putUint8(128);
      writeValue(buffer, value.encode());
    } else if (value is NullFieldsSearchRequest) {
      buffer.putUint8(129);
      writeValue(buffer, value.encode());
    } else {
      super.writeValue(buffer, value);
    }
  }

  @override
  Object? readValueOfType(int type, ReadBuffer buffer) {
    switch (type) {
      case 128:
        return NullFieldsSearchReply.decode(readValue(buffer)!);
      case 129:
        return NullFieldsSearchRequest.decode(readValue(buffer)!);
      default:
        return super.readValueOfType(type, buffer);
    }
  }
}

abstract class NullFieldsFlutterApi {
  static const MessageCodec<Object?> codec = _NullFieldsFlutterApiCodec();

  NullFieldsSearchReply search(NullFieldsSearchRequest request);

  static void setup(NullFieldsFlutterApi? api,
      {BinaryMessenger? binaryMessenger}) {
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.NullFieldsFlutterApi.search', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        channel.setMessageHandler(null);
      } else {
        channel.setMessageHandler((Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.NullFieldsFlutterApi.search was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final NullFieldsSearchRequest? arg_request =
              (args[0] as NullFieldsSearchRequest?);
          assert(arg_request != null,
              'Argument for dev.flutter.pigeon.NullFieldsFlutterApi.search was null, expected non-null NullFieldsSearchRequest.');
          final NullFieldsSearchReply output = api.search(arg_request!);
          return output;
        });
      }
    }
  }
}
