import 'dart:math';
// ignore_for_file: avoid_print
enum GuessResult{correct, tooHigh, tooLow}
class Game {
  int answer;
  int _totalGuess = 0;
  String name;
  int age;
  int max;
  static List<int> _guessesList = [];
  //Game() : answer = Random().nextInt(100)+1;
  Game(this.max,this.name,this.age) : answer = Random().nextInt(max) + 1{
    print("Answer is : $answer ");
  }

  GuessResult doGuess(answer,int guess) {
    _totalGuess++;
    if (answer == guess) {
      return GuessResult.correct;
    } else if (guess > answer) {
      return GuessResult.tooHigh;
    } else{
      return GuessResult.tooLow;
    }
  }



  void addGuessToList() {
    _guessesList.add(_totalGuess);
  }

  static List<int> get guessList {
    return _guessesList;
  }

  void resetTotalGuess() {
    _totalGuess = 0;
  }

  int get totalGuess {
    return _totalGuess;
  }

  void set setMax(int m) {
    max = m;
  }

  void setAnswer(int? m) {
    this.answer = Random().nextInt(m!) + 1;
  }
}
