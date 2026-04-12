import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'dashboard_widget.dart' show DashboardWidget;
import 'package:flutter/material.dart';

class DashboardModel extends FlutterFlowModel<DashboardWidget> {
  ///  Local state fields for this page.

  List<int> violations = [0];
  void addToViolations(int item) => violations.add(item);
  void removeFromViolations(int item) => violations.remove(item);
  void removeAtIndexFromViolations(int index) => violations.removeAt(index);
  void insertAtIndexInViolations(int index, int item) =>
      violations.insert(index, item);
  void updateViolationsAtIndex(int index, Function(int) updateFn) =>
      violations[index] = updateFn(violations[index]);

  List<String> intervals = ['0'];
  void addToIntervals(String item) => intervals.add(item);
  void removeFromIntervals(String item) => intervals.remove(item);
  void removeAtIndexFromIntervals(int index) => intervals.removeAt(index);
  void insertAtIndexInIntervals(int index, String item) =>
      intervals.insert(index, item);
  void updateIntervalsAtIndex(int index, Function(String) updateFn) =>
      intervals[index] = updateFn(intervals[index]);

  List<int> interverIndex = [0];
  void addToInterverIndex(int item) => interverIndex.add(item);
  void removeFromInterverIndex(int item) => interverIndex.remove(item);
  void removeAtIndexFromInterverIndex(int index) =>
      interverIndex.removeAt(index);
  void insertAtIndexInInterverIndex(int index, int item) =>
      interverIndex.insert(index, item);
  void updateInterverIndexAtIndex(int index, Function(int) updateFn) =>
      interverIndex[index] = updateFn(interverIndex[index]);

  List<String> violationstypes = [];
  void addToViolationstypes(String item) => violationstypes.add(item);
  void removeFromViolationstypes(String item) => violationstypes.remove(item);
  void removeAtIndexFromViolationstypes(int index) =>
      violationstypes.removeAt(index);
  void insertAtIndexInViolationstypes(int index, String item) =>
      violationstypes.insert(index, item);
  void updateViolationstypesAtIndex(int index, Function(String) updateFn) =>
      violationstypes[index] = updateFn(violationstypes[index]);

  List<int> violationstypestotals = [];
  void addToViolationstypestotals(int item) => violationstypestotals.add(item);
  void removeFromViolationstypestotals(int item) =>
      violationstypestotals.remove(item);
  void removeAtIndexFromViolationstypestotals(int index) =>
      violationstypestotals.removeAt(index);
  void insertAtIndexInViolationstypestotals(int index, int item) =>
      violationstypestotals.insert(index, item);
  void updateViolationstypestotalsAtIndex(int index, Function(int) updateFn) =>
      violationstypestotals[index] = updateFn(violationstypestotals[index]);

  List<int> intgemptylistcons = [0];
  void addToIntgemptylistcons(int item) => intgemptylistcons.add(item);
  void removeFromIntgemptylistcons(int item) => intgemptylistcons.remove(item);
  void removeAtIndexFromIntgemptylistcons(int index) =>
      intgemptylistcons.removeAt(index);
  void insertAtIndexInIntgemptylistcons(int index, int item) =>
      intgemptylistcons.insert(index, item);
  void updateIntgemptylistconsAtIndex(int index, Function(int) updateFn) =>
      intgemptylistcons[index] = updateFn(intgemptylistcons[index]);

  List<String> stringemptylistcons = ['0'];
  void addToStringemptylistcons(String item) => stringemptylistcons.add(item);
  void removeFromStringemptylistcons(String item) =>
      stringemptylistcons.remove(item);
  void removeAtIndexFromStringemptylistcons(int index) =>
      stringemptylistcons.removeAt(index);
  void insertAtIndexInStringemptylistcons(int index, String item) =>
      stringemptylistcons.insert(index, item);
  void updateStringemptylistconsAtIndex(int index, Function(String) updateFn) =>
      stringemptylistcons[index] = updateFn(stringemptylistcons[index]);

  ///  State fields for stateful widgets in this page.

  // State field(s) for StartDate widget.
  FocusNode? startDateFocusNode;
  TextEditingController? startDateTextController;
  String? Function(BuildContext, String?)? startDateTextControllerValidator;
  DateTime? datePicked1;
  // Stores action output result for [Backend Call - API (GetSystemAnalytics)] action in Icon widget.
  ApiCallResponse? getSystemAnalyticsApiResult;
  // State field(s) for EndDate widget.
  FocusNode? endDateFocusNode;
  TextEditingController? endDateTextController;
  String? Function(BuildContext, String?)? endDateTextControllerValidator;
  DateTime? datePicked2;
  // Stores action output result for [Backend Call - API (GetSystemAnalytics)] action in Icon widget.
  ApiCallResponse? getSystemAnalyticsApiResultEndDate;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    startDateFocusNode?.dispose();
    startDateTextController?.dispose();

    endDateFocusNode?.dispose();
    endDateTextController?.dispose();
  }

  /// Action blocks.
  Future getViolationAnalytics(BuildContext context) async {}

  Future getViolationsSummary(BuildContext context) async {
    ApiCallResponse? getsyStemSummaryApiResult;

    getsyStemSummaryApiResult =
        await SupabaseReportsGroup.getsyStemSummaryCall.call(
      startDate: startDateTextController.text,
      endDate: endDateTextController.text,
    );

    if ((getsyStemSummaryApiResult.succeeded ?? true)) {
      violationstypes = SupabaseReportsGroup.getsyStemSummaryCall
          .violationtype(
            (getsyStemSummaryApiResult.jsonBody ?? ''),
          )!
          .toList()
          .cast<String>();
      violationstypestotals = SupabaseReportsGroup.getsyStemSummaryCall
          .totalviolationType(
            (getsyStemSummaryApiResult.jsonBody ?? ''),
          )!
          .toList()
          .cast<int>();
    }
  }
}
