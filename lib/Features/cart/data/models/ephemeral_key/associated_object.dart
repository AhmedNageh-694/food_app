import 'package:collection/collection.dart';

class AssociatedObject {
  String? id;
  String? type;

  AssociatedObject({this.id, this.type});

  factory AssociatedObject.fromJson(Map<String, dynamic> json) {
    return AssociatedObject(
      id: json['id'] as String?,
      type: json['type'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'type': type,
      };

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! AssociatedObject) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => id.hashCode ^ type.hashCode;
}
