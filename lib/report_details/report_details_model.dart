import '/components/event_tile_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'report_details_widget.dart' show ReportDetailsWidget;
import 'package:flutter/material.dart';

class ReportDetailsModel extends FlutterFlowModel<ReportDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // Model for EventTile component.
  late EventTileModel eventTileModel1;
  // Model for EventTile component.
  late EventTileModel eventTileModel2;
  // Model for EventTile component.
  late EventTileModel eventTileModel3;
  // Model for EventTile component.
  late EventTileModel eventTileModel4;

  @override
  void initState(BuildContext context) {
    eventTileModel1 = createModel(context, () => EventTileModel());
    eventTileModel2 = createModel(context, () => EventTileModel());
    eventTileModel3 = createModel(context, () => EventTileModel());
    eventTileModel4 = createModel(context, () => EventTileModel());
  }

  @override
  void dispose() {
    eventTileModel1.dispose();
    eventTileModel2.dispose();
    eventTileModel3.dispose();
    eventTileModel4.dispose();
  }
}
