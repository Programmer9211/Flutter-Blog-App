import 'package:fluttertoast/fluttertoast.dart';
import 'package:uuid/uuid.dart';

void showAlert(String message) {
  Fluttertoast.showToast(msg: message);
}

String generateId() {
  return Uuid().v1();
}
