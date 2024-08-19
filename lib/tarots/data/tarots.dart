import 'package:goodluck/tarots/data/major.dart';

class Tarots {
  final String card;
  final String nickname;
  final String character;
  final String definition;
  final String money;
  final String love;
  final String health;
  final String work;
  final String job;

  Tarots(this.card, this.nickname, this.character, this.definition, this.money, this.love, this.health, this.work, this.job);
}

List<Tarots> genListTarots() {
  List<Tarots> tarots = [];

  for (var major in listMajor) {
    tarots.add(Tarots(
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