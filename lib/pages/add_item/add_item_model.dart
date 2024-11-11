import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import 'add_item_widget.dart' show AddItemWidget;
import 'package:flutter/material.dart';

class AddItemModel extends FlutterFlowModel<AddItemWidget> {
  ///  State fields for stateful widgets in this page.

  InstantTimer? instantTimer;
  // Stores action output result for [Backend Call - API (GetBobbinData)] action in AddItem widget.
  ApiCallResponse? getBobbinDataResponse;
  // State field(s) for Barcode widget.
  FocusNode? barcodeFocusNode;
  TextEditingController? barcodeTextController;
  String? Function(BuildContext, String?)? barcodeTextControllerValidator;
  // State field(s) for Itemname widget.
  FocusNode? itemnameFocusNode;
  TextEditingController? itemnameTextController;
  String? Function(BuildContext, String?)? itemnameTextControllerValidator;
  // State field(s) for Description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    instantTimer?.cancel();
    barcodeFocusNode?.dispose();
    barcodeTextController?.dispose();

    itemnameFocusNode?.dispose();
    itemnameTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();
  }
}
