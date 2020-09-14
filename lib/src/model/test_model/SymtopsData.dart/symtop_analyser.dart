import 'package:covid19_app/src/model/test_model/SymtopsData.dart/symtops.dart';

class Symtops_analyser {
  int _index = 0;
  int get index => _index;
  List<Symtops_data> Symtops_index = [
    Symtops_data(
      symtop: "Dry cough",
      symtop_description:
          "A cough, also known as tussis, is a voluntary or involuntary act that clears the throat and breathing passage of foreign particles, microbes, irritants, fluids, and mucus; it is a rapid expulsion of air from the lungs. Coughing can be done deliberately or as part of a reflex.",
      imagePath: "images/symtops/DifficultyInBreathing.png",
    ),
    Symtops_data(
      symtop: "Fever",
      symtop_description:
          "A fever is a temporary increase in your body temperature, often due to an illness. Having a fever is a sign that something out of the ordinary is going on in your body. For an adult, a fever may be uncomfortable, but usually isn't a cause for concern unless it reaches 103 F (39.4 C) or higher.",
      imagePath: "images/symtops/Fever2.png",
    ),
    Symtops_data(
      symtop: "Difficulty breathing or shortness of breath",
      symtop_description:
          "Sometimes you can have mild breathing problems because of a stuffy nose or intense exercise. But shortness of breath can also be a sign of a serious disease. Many conditions can make you feel short of breath",
      imagePath: "images/symtops/Breathing.jpg",
    ),
    Symtops_data(
      symtop: "Diarrhoea",
      symtop_description:
          "Diarrhoea is when your bowel movements become loose or watery. The definition of diarrhoea is passing loose or watery bowel movements 3 or more times in a day (or more frequently than usual). Diarrhoea occurs when the lining of the intestine is unable to absorb fluid, or it actively secretes fluid.",
      imagePath: "images/symtops/DifficultyInBreathing.png",
    ),
    Symtops_data(
      symtop: "chest pain or pressure",
      symtop_description:
          "Chest pain can have causes that aren't due to underlying disease. Examples include heavy lifting, weight lifting, trauma to the chest or swallowing a large piece of food.",
      imagePath: "images/symtops/DifficultyInBreathing.png",
    ),
    Symtops_data(
      symtop: "Headache",
      symtop_description:
          "Headache is the symptom of pain in the face, head, or neck. It can occur as a migraine, tension-type headache, or cluster headache. Frequent headaches can affect relationships and employment. There is also an increased risk of depression in those with severe headaches.",
      imagePath: "images/symtops/Tiredness2.png",
    ),
    Symtops_data(
      symtop: "Tiredness",
      symtop_description:
          "Feeling overtired, with low energy and a strong desire to sleep that interferes with normal daily activities.",
      imagePath: "images/symtops/Tiredness.png",
    ),
  ];
}
