import '/components/event_tile2_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'report_details2_widget.dart' show ReportDetails2Widget;
import 'package:flutter/material.dart';

class ReportDetails2Model extends FlutterFlowModel<ReportDetails2Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // Model for EventTile2 component.
  late EventTile2Model eventTile2Model1;
  // Model for EventTile2 component.
  late EventTile2Model eventTile2Model2;
  // Model for EventTile2 component.
  late EventTile2Model eventTile2Model3;
  // Model for EventTile2 component.
  late EventTile2Model eventTile2Model4;

  @override
  void initState(BuildContext context) {
    eventTile2Model1 = createModel(context, () => EventTile2Model());
    eventTile2Model2 = createModel(context, () => EventTile2Model());
    eventTile2Model3 = createModel(context, () => EventTile2Model());
    eventTile2Model4 = createModel(context, () => EventTile2Model());
  }

  @override
  void dispose() {
    eventTile2Model1.dispose();
    eventTile2Model2.dispose();
    eventTile2Model3.dispose();
    eventTile2Model4.dispose();
  }
}
