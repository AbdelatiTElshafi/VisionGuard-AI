import '../database.dart';

class ViolationsTable extends SupabaseTable<ViolationsRow> {
  @override
  String get tableName => 'violations';

  @override
  ViolationsRow createRow(Map<String, dynamic> data) => ViolationsRow(data);
}

class ViolationsRow extends SupabaseDataRow {
  ViolationsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViolationsTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String get camId => getField<String>('cam_id')!;
  set camId(String value) => setField<String>('cam_id', value);

  String get violationType => getField<String>('violation_type')!;
  set violationType(String value) => setField<String>('violation_type', value);

  String? get severity => getField<String>('severity');
  set severity(String? value) => setField<String>('severity', value);

  DateTime? get violationDate => getField<DateTime>('violation_date');
  set violationDate(DateTime? value) =>
      setField<DateTime>('violation_date', value);

  String get imageUrl => getField<String>('image_url')!;
  set imageUrl(String value) => setField<String>('image_url', value);

  double? get confidence => getField<double>('confidence');
  set confidence(double? value) => setField<double>('confidence', value);

  int? get objectCount => getField<int>('object_count');
  set objectCount(int? value) => setField<int>('object_count', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  bool? get imageDeleted => getField<bool>('image_deleted');
  set imageDeleted(bool? value) => setField<bool>('image_deleted', value);
}
