import 'dart:math';

var quotes = {
  1 : '"Those who expect to reap the blessings of freedom, must, like men, undergo the fatigues of supporting it."-Thomas Paine',
  2 : '"... how terrible is the pain of the mind and heart when the freedom of mankind is suppressed!"-E.A. Bucchianeri',
  3 : '"Nothing is more difficult, and therefore more precious, than to be able to decide."-Napoleon Bonaparte',
  4 : 'If ever a time should come, when vain and aspiring men shall possess the highest seats in Government, our country will stand in need of its experienced patriots to prevent its ruin."-Samuel Adams',
  5 : '"Without freedom of thought, there can be no such thing as wisdom - and no such thing as public liberty without freedom of speech."-Benjamin Franklin'
};

class PickQuote {
  var rng = new Random();
  var quote;

  String randomQuote(int luckyNumber) {
    quote = quotes[luckyNumber + 1];
    print(quote);
    return quote;
  }
}