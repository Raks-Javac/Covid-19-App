import 'package:covid19_app/src/model/test_model/prevention/preventioData.dart';
import 'package:scoped_model/scoped_model.dart';

class PreventionModel extends Model{
PreventData pd = PreventData();
  int getPreventionListlength() => pd.preventListData.length;
  String getPreventimage(int index) => pd.preventListData[index].imagePreventPath;
  String getPreventDescription(int index) => pd.preventListData[index].image_PreventDescription;
  String getPreventRequirementImage(int index) => pd.preventListData[index].image_Requirement;
  String getPreventRequirementText(int index) => pd.preventListData[index].image_requirementDescription;
}