import 'package:covid19_app/src/model/test_model/SymtopsData.dart/symtop_analyser.dart';
import 'package:scoped_model/scoped_model.dart';

class Symptops_Model extends Model {
  Symtops_analyser symptopsList = Symtops_analyser();

  List mm() => symptopsList.Symtops_index;
  String Sym(int index) => symptopsList.Symtops_index[index].symtop;
  String Sym_desc(int index) =>
      symptopsList.Symtops_index[index].symtop_description;
  String Sym_img(int index) => symptopsList.Symtops_index[index].imagePath;
}
