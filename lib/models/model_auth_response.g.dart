// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_auth_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ResultAdapter extends TypeAdapter<Result> {
  @override
  final int typeId = 0;

  @override
  Result read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Result(
      fullName: fields[0] as String?,
      phoneNumber: fields[1] as String?,
      email: fields[2] as String?,
      address: fields[3] as String?,
      dob: fields[4] as String?,
      levelUser: fields[5] as String?,
      token: fields[6] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Result obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.fullName)
      ..writeByte(1)
      ..write(obj.phoneNumber)
      ..writeByte(2)
      ..write(obj.email)
      ..writeByte(3)
      ..write(obj.address)
      ..writeByte(4)
      ..write(obj.dob)
      ..writeByte(5)
      ..write(obj.levelUser)
      ..writeByte(6)
      ..write(obj.token);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ResultAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
