import 'package:goodluck/tarots/data/cups.dart';
import 'package:goodluck/tarots/data/major.dart';
import 'package:goodluck/tarots/data/pentacles.dart';
import 'package:goodluck/tarots/data/swards.dart';
import 'package:goodluck/tarots/data/wands.dart';

class Tarot {
  final String card;
  final String nickname;
  final String sign;
  final String keyword;
  final String definition;
  final String money;
  final String love;
  final String health;
  final String work;
  final String job;

  Tarot(this.card, this.nickname, this.sign, this.keyword, this.definition, this.money, this.love, this.health, this.work, this.job);
}

List<Tarot> genListTarot() {
  List<Tarot> tarots = [];

  for (var card in listMajor) {
    tarots.add(Tarot(
      card['card'],
      card['nickname'],
      card['sign'],
      card['keyword'],
      card['definition'],
      card['money'],
      card['love'],
      card['health'],
      card['work'],
      card['job'],
    ));
  }

  for (var card in listSward) {
    tarots.add(Tarot(
      card['card'],
      card['nickname'],
      card['sign'],
      card['keyword'],
      card['definition'],
      card['money'],
      card['love'],
      card['health'],
      card['work'],
      card['job'],
    ));
  }

  for (var card in listPentacle) {
    tarots.add(Tarot(
      card['card'],
      card['nickname'],
      card['sign'],
      card['keyword'],
      card['definition'],
      card['money'],
      card['love'],
      card['health'],
      card['work'],
      card['job'],
    ));
  }

  for (var card in listWand) {
    tarots.add(Tarot(
      card['card'],
      card['nickname'],
      card['sign'],
      card['keyword'],
      card['definition'],
      card['money'],
      card['love'],
      card['health'],
      card['work'],
      card['job'],
    ));
  }

  for (var card in listCup) {
    tarots.add(Tarot(
      card['card'],
      card['nickname'],
      card['sign'],
      card['keyword'],
      card['definition'],
      card['money'],
      card['love'],
      card['health'],
      card['work'],
      card['job'],
    ));
  }

  return tarots;
}

List<Tarot> genListTarotShuffle() {
  List<Tarot> tarots = genListTarot();
  tarots.shuffle();
  return tarots;
}