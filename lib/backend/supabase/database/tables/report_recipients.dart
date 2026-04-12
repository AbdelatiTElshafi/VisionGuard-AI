import '../database.dart';

class ReportRecipientsTable extends SupabaseTable<ReportRecipientsRow> {
  @override
  String get tableName => 'report_recipients';

  @override
  ReportRecipientsRow createRow(Map<String, dynamic> data) =>
      ReportRecipientsRow(data);
}

class ReportRecipientsRow extends SupabaseDataRow {
  ReportRecipientsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ReportRecipientsTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String get email => getField<String>('email')!;
  set email(String value) => setField<String>('email', value);

  String? get fullName => getField<String>('full_name');
  set fullName(String? value) => setField<String>('full_name', value);

  bool? get isActive => getField<bool>('is_active');
  set isActive(bool? value) => setField<bool>('is_active', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
