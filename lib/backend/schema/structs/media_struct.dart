// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MediaStruct extends BaseStruct {
  MediaStruct({
    String? category,
    String? title,
    String? titleSource,
    String? author,
    String? authorSource,
    String? description,
    String? image,
  })  : _category = category,
        _title = title,
        _titleSource = titleSource,
        _author = author,
        _authorSource = authorSource,
        _description = description,
        _image = image;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  set category(String? val) => _category = val;
  bool hasCategory() => _category != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;
  bool hasTitle() => _title != null;

  // "titleSource" field.
  String? _titleSource;
  String get titleSource => _titleSource ?? '';
  set titleSource(String? val) => _titleSource = val;
  bool hasTitleSource() => _titleSource != null;

  // "author" field.
  String? _author;
  String get author => _author ?? '';
  set author(String? val) => _author = val;
  bool hasAuthor() => _author != null;

  // "authorSource" field.
  String? _authorSource;
  String get authorSource => _authorSource ?? '';
  set authorSource(String? val) => _authorSource = val;
  bool hasAuthorSource() => _authorSource != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;
  bool hasDescription() => _description != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;
  bool hasImage() => _image != null;

  static MediaStruct fromMap(Map<String, dynamic> data) => MediaStruct(
        category: data['category'] as String?,
        title: data['title'] as String?,
        titleSource: data['titleSource'] as String?,
        author: data['author'] as String?,
        authorSource: data['authorSource'] as String?,
        description: data['description'] as String?,
        image: data['image'] as String?,
      );

  static MediaStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? MediaStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'category': _category,
        'title': _title,
        'titleSource': _titleSource,
        'author': _author,
        'authorSource': _authorSource,
        'description': _description,
        'image': _image,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'category': serializeParam(
          _category,
          ParamType.String,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'titleSource': serializeParam(
          _titleSource,
          ParamType.String,
        ),
        'author': serializeParam(
          _author,
          ParamType.String,
        ),
        'authorSource': serializeParam(
          _authorSource,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
      }.withoutNulls;

  static MediaStruct fromSerializableMap(Map<String, dynamic> data) =>
      MediaStruct(
        category: deserializeParam(
          data['category'],
          ParamType.String,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        titleSource: deserializeParam(
          data['titleSource'],
          ParamType.String,
          false,
        ),
        author: deserializeParam(
          data['author'],
          ParamType.String,
          false,
        ),
        authorSource: deserializeParam(
          data['authorSource'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'MediaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MediaStruct &&
        category == other.category &&
        title == other.title &&
        titleSource == other.titleSource &&
        author == other.author &&
        authorSource == other.authorSource &&
        description == other.description &&
        image == other.image;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [category, title, titleSource, author, authorSource, description, image]);
}

MediaStruct createMediaStruct({
  String? category,
  String? title,
  String? titleSource,
  String? author,
  String? authorSource,
  String? description,
  String? image,
}) =>
    MediaStruct(
      category: category,
      title: title,
      titleSource: titleSource,
      author: author,
      authorSource: authorSource,
      description: description,
      image: image,
    );
