import 'package:freezed_annotation/freezed_annotation.dart';

part 'stove.freezed.dart';
part 'stove.g.dart';

/// Represents a Rika Firenet stove
@freezed
class Stove with _$Stove {
  const factory Stove({
    required String id,
    required String name,
  }) = _Stove;

  factory Stove.fromJson(Map<String, dynamic> json) => _$StoveFromJson(json);
}
