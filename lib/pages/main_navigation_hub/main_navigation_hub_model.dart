import '/components/section_header/section_header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'main_navigation_hub_widget.dart' show MainNavigationHubWidget;
import 'package:flutter/material.dart';

class MainNavigationHubModel extends FlutterFlowModel<MainNavigationHubWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for SectionHeader component.
  late SectionHeaderModel sectionHeaderModel;

  @override
  void initState(BuildContext context) {
    sectionHeaderModel = createModel(context, () => SectionHeaderModel());
  }

  @override
  void dispose() {
    sectionHeaderModel.dispose();
  }
}
