import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import 'consume_material_widget.dart' show ConsumeMaterialWidget;
import 'package:flutter/material.dart';

class ConsumeMaterialModel extends FlutterFlowModel<ConsumeMaterialWidget> {
  ///  Local state fields for this page.

  String lastscannedBarcode = '-';

  String productiondate = '-';

  String expiredate = '-';

  String insertiondate = '-';

  String storagearea = '-';

  String barcodetoconsume = '-';

  bool varified = false;

  bool consume = false;

  ///  State fields for stateful widgets in this page.

  InstantTimer? instantTimer;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (ConsumeMaterial)] action in TextField widget.
  ApiCallResponse? getShortCodeResponse;
  // Stores action output result for [Backend Call - API (ConfirmConsumption)] action in Button widget.
  ApiCallResponse? apiResultyq0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    instantTimer?.cancel();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
