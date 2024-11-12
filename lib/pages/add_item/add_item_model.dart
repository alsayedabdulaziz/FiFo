import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/instant_timer.dart';
import 'add_item_widget.dart' show AddItemWidget;
import 'package:flutter/material.dart';

class AddItemModel extends FlutterFlowModel<AddItemWidget> {
  ///  Local state fields for this page.

  String lastscannedBarcode = '-';

  List<String> storageareas = [];
  void addToStorageareas(String item) => storageareas.add(item);
  void removeFromStorageareas(String item) => storageareas.remove(item);
  void removeAtIndexFromStorageareas(int index) => storageareas.removeAt(index);
  void insertAtIndexInStorageareas(int index, String item) =>
      storageareas.insert(index, item);
  void updateStorageareasAtIndex(int index, Function(String) updateFn) =>
      storageareas[index] = updateFn(storageareas[index]);

  ///  State fields for stateful widgets in this page.

  InstantTimer? instantTimer;
  // Stores action output result for [Backend Call - API (GetBobbinData)] action in AddItem widget.
  ApiCallResponse? getBobbinDataResponse;
  // State field(s) for Barcode widget.
  FocusNode? barcodeFocusNode;
  TextEditingController? barcodeTextController;
  String? Function(BuildContext, String?)? barcodeTextControllerValidator;
  // State field(s) for StorageAreas widget.
  String? storageAreasValue;
  FormFieldController<String>? storageAreasValueController;
  // State field(s) for Itemname widget.
  FocusNode? itemnameFocusNode;
  TextEditingController? itemnameTextController;
  String? Function(BuildContext, String?)? itemnameTextControllerValidator;
  // State field(s) for Description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  // Stores action output result for [Backend Call - API (AddItem)] action in Button widget.
  ApiCallResponse? apiResult3zf;

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
