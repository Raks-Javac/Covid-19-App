class Test {
  String question;
  String correctAnswer;
  String option2;
  String image_Path;
  String test_prv;
  Test(
      {this.test_prv,
      this.question,
      this.image_Path,
      this.correctAnswer,
      this.option2});
}

class Test_Cycle {
  List<Test> cycler = [
    Test(
        question: "Are You Experiencing Fever ?",
        image_Path: "images/fd895c44fac980a805aebcfbf6f597fe.gif",
        correctAnswer: "NO",
        option2: "YES"),
    Test(
        question: "Are You Having Dry Cough ?",
        image_Path: "images/symtops/Fever.png",
        correctAnswer: "NO",
        option2: "YES"),
    Test(
        question: "Are You Experiencing Difficulty In Breathing ?",
        image_Path: "images/symtops/DifficultyInBreathing.png",
        correctAnswer: "NO",
        option2: "YES"),
    Test(
        question: "Are You Experiencing Tiredness?",
        image_Path: "images/symtops/Tiredness.png",
        correctAnswer: "NO",
        option2: "YES"),
    Test(
        question: "Are You Experiencing Nasal Congestion?",
        image_Path: "images/images (1).jpeg",
        correctAnswer: "NO",
        option2: "YES"),
    Test(
        question: "Do you Have A Runny Nose?",
        image_Path: "images/symtops/Fever.png",
        correctAnswer: "NO",
        option2: "YES"),
    Test(
        question: "Are You Experiencing A Sore Throat?",
        image_Path: "images/symtops/DifficultyInBreathing.png",
        correctAnswer: "NO",
        option2: "YES"),
    Test(
        question: "Do You Have Diarrhea?",
        image_Path: "images/5e81d3125836db0451c3427e_pack-grid-thumbnail.png",
        correctAnswer: "NO",
        option2: "YES"),
    Test(
        question: "Did You Recently Travel By Air?",
        image_Path: "images/Test/travel.png",
        correctAnswer: "NO",
        option2: "YES"),
    Test(
        question: "Did You Recently Meet Someone Who Travelled By Air?",
        image_Path: "images/3600338.jpg",
        correctAnswer: "NO",
        option2: "YES"),
  ];
  int index = 0;
  int get indexer => index;
  int get incr_indexer => index++;
  int get zero_counter => index = 0;
}
