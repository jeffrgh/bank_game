// ignore_for_file: constant_identifier_names

enum CardSuit {
  Spades,
  Hearts,
  Diamonds,
  Clubs,
}

enum CardType {
  Ace,
  Two,
  Three,
  Four,
  Five,
  Six,
  Seven,
  Eight,
  Nine,
  Ten,
  Jack,
  Queen,
  King
}

enum CardColor {
  red,
  black,
}

class PlayingCard {
  CardSuit cardSuit;
  CardType cardType;

  PlayingCard({
    required this.cardSuit,
    required this.cardType,
  });

  CardColor get cardColor {
    if (cardSuit == CardSuit.Hearts || cardSuit == CardSuit.Diamonds) {
      return CardColor.red;
    } else {
      return CardColor.black;
    }
  }
}
