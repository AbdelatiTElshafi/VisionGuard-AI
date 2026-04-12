import '../database.dart';

class WorkShiftsTable extends SupabaseTable<WorkShiftsRow> {
  @override
  String get tableName => 'work_shifts';

  @override
  WorkShiftsRow createRow(Map<String, dynamic> data) => WorkShiftsRow(data);
}

class WorkShiftsRow extends SupabaseDataRow {
  WorkShiftsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => WorkShiftsTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String get shiftName => getField<String>('shift_name')!;
  set shiftName(String value) => setField<String>('shift_name', value);

  PostgresTime get startTime => getField<PostgresTime>('start_time')!;
  set startTime(PostgresTime value) =>
      setField<PostgresTime>('start_time', value);

  PostgresTime get endTime => getField<PostgresTime>('end_time')!;
  set endTime(PostgresTime value) => setField<PostgresTime>('end_time', value);

  List<String> get workingDays => getListField<String>('working_days');
  set workingDays(List<String>? value) =>
      setListField<String>('working_days', value);

  bool? get isActive => getField<bool>('is_active');
  set isActive(bool? value) => setField<bool>('is_active', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
