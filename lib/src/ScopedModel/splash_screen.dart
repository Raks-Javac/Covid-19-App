import 'package:covid19_app/src/model/test_model/tester/splashData.dart';
import 'package:scoped_model/scoped_model.dart';

class Splash_M extends Model {
  About_Covid cv = About_Covid();
  String get txt => cv.about;
  void vv() {
    txt;
    notifyListeners();
  }
}
