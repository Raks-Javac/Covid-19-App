import 'package:covid19_app/src/model/test_model/homePageData.dart/homeTxt.dart';
import 'package:scoped_model/scoped_model.dart';

class HomeModel extends Model {
  Hometxt tt = Hometxt();
  String get all_AboutCovid => tt.all_aboutCovid;
  String get covid_image => tt.imagePath;
  String get test_preview => tt.test_Preview;
}
