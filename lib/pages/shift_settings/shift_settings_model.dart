import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'shift_settings_widget.dart' show ShiftSettingsWidget;
import 'package:flutter/material.dart';

class ShiftSettingsModel extends FlutterFlowModel<ShiftSettingsWidget> {
  ///  Local state fields for this page.

  List<String> shiftWorkingDays = ['Mon'];
  void addToShiftWorkingDays(String item) => shiftWorkingDays.add(item);
  void removeFromShiftWorkingDays(String item) => shiftWorkingDays.remove(item);
  void removeAtIndexFromShiftWorkingDays(int index) =>
      shiftWorkingDays.removeAt(index);
  void insertAtIndexInShiftWorkingDays(int index, String item) =>
      shiftWorkingDays.insert(index, item);
  void updateShiftWorkingDaysAtIndex(int index, Function(String) updateFn) =>
      shiftWorkingDays[index] = updateFn(shiftWorkingDays[index]);

  String shiftName = 'A';

  String shiftStart = '8:00';

  String shiftEnd = '4:00';

  bool startTimeSelected = false;

  bool endTimeSelected = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for Shiftname widget.
  FocusNode? shiftnameFocusNode;
  TextEditingController? shiftnameTextController;
  String? Function(BuildContext, String?)? shiftnameTextControllerValidator;
  DateTime? datePicked1;
  // State field(s) for Start widget.
  FocusNode? startFocusNode;
  TextEditingController? startTextController;
  String? Function(BuildContext, String?)? startTextControllerValidator;
  DateTime? datePicked2;
  // State field(s) for END widget.
  FocusNode? endFocusNode;
  TextEditingController? endTextController;
  String? Function(BuildContext, String?)? endTextControllerValidator;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  List<String>? get choiceChipsValues => choiceChipsValueController?.value;
  set choiceChipsValues(List<String>? val) =>
      choiceChipsValueController?.value = val;
  // State field(s) for ShiftActive widget.
  bool? shiftActiveValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    shiftnameFocusNode?.dispose();
    shiftnameTextController?.dispose();

    startFocusNode?.dispose();
    startTextController?.dispose();

    endFocusNode?.dispose();
    endTextController?.dispose();
  }
}
