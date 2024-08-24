import 'package:goodluck/tarots/data/major.dart';

class Tarot {
  final String card;
  final String nickname;
  final String character;
  final String definition;
  final String money;
  final String love;
  final String health;
  final String work;
  final String job;

  Tarot(this.card, this.nickname, this.character, this.definition, this.money, this.love, this.health, this.work, this.job);
}

List<Tarot> genListTarot() {
  List<Tarot> tarots = [];

  for (var major in listMajor) {
    tarots.add(Tarot(
      major['card'],
      major['nickname'],
      major['character'],
      major['definition'],
      major['money'],
      major['love'],
      major['health'],
      major['work'],
      major['job'],
    ));
    tarots.add(Tarot(
      major['card'],
      major['nickname'],
      major['character'],
      major['definition'],
      major['money'],
      major['love'],
      major['health'],
      major['work'],
      major['job'],
    ));
  }

  return tarots;
}

List<Tarot> genListTarotShuffle() {
  List<Tarot> tarots = genListTarot();
  tarots.shuffle();
  return tarots;
}