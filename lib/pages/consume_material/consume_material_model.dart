import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import 'consume_material_widget.dart' show ConsumeMaterialWidget;
import 'package:flutter/material.dart';

class ConsumeMaterialModel extends FlutterFlowModel<ConsumeMaterialWidget> {
  ///  Local state fields for this page.

  String lastscannedBarcode = '-';

  ///  State fields for stateful widgets in this page.

  InstantTimer? instantTimer;
  // Stores action output result for [Backend Call - API (GetBobbinData)] action in ConsumeMaterial widget.
  ApiCallResponse? getBobbinDataResponse;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    instantTimer?.cancel();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
