import '/components/camera_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cameras_list_widget.dart' show CamerasListWidget;
import 'package:flutter/material.dart';

class CamerasListModel extends FlutterFlowModel<CamerasListWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for CameraCard component.
  late CameraCardModel cameraCardModel;

  @override
  void initState(BuildContext context) {
    cameraCardModel = createModel(context, () => CameraCardModel());
  }

  @override
  void dispose() {
    cameraCardModel.dispose();
  }
}
