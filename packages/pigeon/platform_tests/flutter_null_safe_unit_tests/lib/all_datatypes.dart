// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
//
// Autogenerated from Pigeon (v3.0.4), do not edit directly.
// See also: https://pub.dev/packages/pigeon
// ignore_for_file: public_member_api_docs, non_constant_identifier_names, avoid_as, unused_import, unnecessary_parenthesis, prefer_null_aware_operators, omit_local_variable_types, unused_shown_name
// @dart = 2.12
import 'dart:async';
import 'dart:typed_data' show Uint8List, Int32List, Int64List, Float64List;

import 'package:flutter/foundation.dart' show WriteBuffer, ReadBuffer;
import 'package:flutter/services.dart';

class Everything {
  Everything({
    this.aBool,
    this.anInt,
    this.aDouble,
    this.aString,
    this.aByteArray,
    this.a4ByteArray,
    this.a8ByteArray,
    this.aFloatArray,
    this.aList,
    this.aMap,
    this.nestedList,
    this.mapWithAnnotations,
    this.mapWithObject,
  });

  bool? aBool;
  int? anInt;
  double? aDouble;
  String? aString;
  Uint8List? aByteArray;
  Int32List? a4ByteArray;
  Int64List? a8ByteArray;
  Float64List? aFloatArray;
  List<Object?>? aList;
  Map<Object?, Object?>? aMap;
  List<List<bool?>?>? nestedList;
  Map<String?, String?>? mapWithAnnotations;
  Map<String?, Object?>? mapWithObject;

  Object encode() {
    final Map<Object?, Object?> pigeonMap = <Object?, Object?>{};
    pigeonMap['aBool'] = aBool;
    pigeonMap['anInt'] = anInt;
    pigeonMap['aDouble'] = aDouble;
    pigeonMap['aString'] = aString;
    pigeonMap['aByteArray'] = aByteArray;
    pigeonMap['a4ByteArray'] = a4ByteArray;
    pigeonMap['a8ByteArray'] = a8ByteArray;
    pigeonMap['aFloatArray'] = aFloatArray;
    pigeonMap['aList'] = aList;
    pigeonMap['aMap'] = aMap;
    pigeonMap['nestedList'] = nestedList;
    pigeonMap['mapWithAnnotations'] = mapWithAnnotations;
    pigeonMap['mapWithObject'] = mapWithObject;
    return pigeonMap;
  }

  static Everything decode(Object message) {
    final Map<Object?, Object?> pigeonMap = message as Map<Object?, Object?>;
    return Everything(
      aBool: pigeonMap['aBool'] as bool?,
      anInt: pigeonMap['anInt'] as int?,
      aDouble: (pigeonMap['aDouble'] as num?)?.toDouble(),
      aString: pigeonMap['aString'] as String?,
      aByteArray: pigeonMap['aByteArray'] as Uint8List?,
      a4ByteArray: pigeonMap['a4ByteArray'] as Int32List?,
      a8ByteArray: pigeonMap['a8ByteArray'] as Int64List?,
      aFloatArray: pigeonMap['aFloatArray'] as Float64List?,
      aList: pigeonMap['aList'] as List<Object?>?,
      aMap: pigeonMap['aMap'] as Map<Object?, Object?>?,
      nestedList:
          (pigeonMap['nestedList'] as List<Object?>?)?.cast<List<bool?>?>(),
      mapWithAnnotations:
          (pigeonMap['mapWithAnnotations'] as Map<Object?, Object?>?)
              ?.cast<String?, String?>(),
      mapWithObject: (pigeonMap['mapWithObject'] as Map<Object?, Object?>?)
          ?.cast<String?, Object?>(),
    );
  }
}

class _HostEverythingCodec extends StandardMessageCodec {
  const _HostEverythingCodec();
  @override
  void writeValue(WriteBuffer buffer, Object? value) {
    if (value is Everything) {
      buffer.putUint8(128);
      writeValue(buffer, value.encode());
    } else {
      super.writeValue(buffer, value);
    }
  }

  @override
  Object? readValueOfType(int type, ReadBuffer buffer) {
    switch (type) {
      case 128:
        return Everything.decode(readValue(buffer)!);

      default:
        return super.readValueOfType(type, buffer);
    }
  }
}

class HostEverything {
  /// Constructor for [HostEverything].  The [binaryMessenger] named argument is
  /// available for dependency injection.  If it is left null, the default
  /// BinaryMessenger will be used which routes to the host platform.
  HostEverything({BinaryMessenger? binaryMessenger})
      : _binaryMessenger = binaryMessenger;

  final BinaryMessenger? _binaryMessenger;

  static const MessageCodec<Object?> codec = _HostEverythingCodec();

  Future<Everything> giveMeEverything() async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.HostEverything.giveMeEverything', codec,
        binaryMessenger: _binaryMessenger);
    final Map<Object?, Object?>? replyMap =
        await channel.send(null) as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error =
          (replyMap['error'] as Map<Object?, Object?>?)!;
      throw PlatformException(
        code: (error['code'] as String?)!,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else if (replyMap['result'] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyMap['result'] as Everything?)!;
    }
  }

  Future<Everything> echo(Everything arg_everything) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.HostEverything.echo', codec,
        binaryMessenger: _binaryMessenger);
    final Map<Object?, Object?>? replyMap =
        await channel.send(<Object?>[arg_everything]) as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error =
          (replyMap['error'] as Map<Object?, Object?>?)!;
      throw PlatformException(
        code: (error['code'] as String?)!,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else if (replyMap['result'] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyMap['result'] as Everything?)!;
    }
  }
}

class _FlutterEverythingCodec extends StandardMessageCodec {
  const _FlutterEverythingCodec();
  @override
  void writeValue(WriteBuffer buffer, Object? value) {
    if (value is Everything) {
      buffer.putUint8(128);
      writeValue(buffer, value.encode());
    } else {
      super.writeValue(buffer, value);
    }
  }

  @override
  Object? readValueOfType(int type, ReadBuffer buffer) {
    switch (type) {
      case 128:
        return Everything.decode(readValue(buffer)!);

      default:
        return super.readValueOfType(type, buffer);
    }
  }
}

abstract class FlutterEverything {
  static const MessageCodec<Object?> codec = _FlutterEverythingCodec();

  Everything giveMeEverything();
  Everything echo(Everything everything);
  static void setup(FlutterEverything? api,
      {BinaryMessenger? binaryMessenger}) {
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.FlutterEverything.giveMeEverything', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        channel.setMessageHandler(null);
      } else {
        channel.setMessageHandler((Object? message) async {
          // ignore message
          final Everything output = api.giveMeEverything();
          return output;
        });
      }
    }
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.FlutterEverything.echo', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        channel.setMessageHandler(null);
      } else {
        channel.setMessageHandler((Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.FlutterEverything.echo was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final Everything? arg_everything = (args[0] as Everything?);
          assert(arg_everything != null,
              'Argument for dev.flutter.pigeon.FlutterEverything.echo was null, expected non-null Everything.');
          final Everything output = api.echo(arg_everything!);
          return output;
        });
      }
    }
  }
}
