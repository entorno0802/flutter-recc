// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AllMediaStruct extends BaseStruct {
  AllMediaStruct({
    List<String>? media,
    String? title,
    String? transcript,
  })  : _media = media,
        _title = title,
        _transcript = transcript;

  // "media" field.
  List<String>? _media;
  List<String> get media => _media ?? const [];
  set media(List<String>? val) => _media = val;
  void updateMedia(Function(List<String>) updateFn) => updateFn(_media ??= []);
  bool hasMedia() => _media != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;
  bool hasTitle() => _title != null;

  // "transcript" field.
  String? _transcript;
  String get transcript => _transcript ?? '';
  set transcript(String? val) => _transcript = val;
  bool hasTranscript() => _transcript != null;

  static AllMediaStruct fromMap(Map<String, dynamic> data) => AllMediaStruct(
        media: getDataList(data['media']),
        title: data['title'] as String?,
        transcript: data['transcript'] as String?,
      );

  static AllMediaStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? AllMediaStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'media': _media,
        'title': _title,
        'transcript': _transcript,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'media': serializeParam(
          _media,
          ParamType.String,
          true,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'transcript': serializeParam(
          _transcript,
          ParamType.String,
        ),
      }.withoutNulls;

  static AllMediaStruct fromSerializableMap(Map<String, dynamic> data) =>
      AllMediaStruct(
        media: deserializeParam<String>(
          data['media'],
          ParamType.String,
          true,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        transcript: deserializeParam(
          data['transcript'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AllMediaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is AllMediaStruct &&
        listEquality.equals(media, other.media) &&
        title == other.title &&
        transcript == other.transcript;
  }

  @override
  int get hashCode => const ListEquality().hash([media, title, transcript]);
}

AllMediaStruct createAllMediaStruct({
  String? title,
  String? transcript,
}) =>
    AllMediaStruct(
      title: title,
      transcript: transcript,
    );
