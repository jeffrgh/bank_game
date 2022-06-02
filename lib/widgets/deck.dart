import 'card.dart';

class Deck {
  List player1Deck = [];
  List aIDeck = [];
  List originalDeck = [for (int i = 1; i < 53; i++) i];
  Map<int, PlayingCard> interpreter = {
    1: PlayingCard(
      cardSuit: CardSuit.Spades,
      cardType: CardType.One,
    ),
    2: PlayingCard(
      cardSuit: CardSuit.Spades,
      cardType: CardType.Two,
    ),
    3: PlayingCard(
      cardSuit: CardSuit.Spades,
      cardType: CardType.Three,
    ),
    4: PlayingCard(
      cardSuit: CardSuit.Spades,
      cardType: CardType.Four,
    ),
    5: PlayingCard(
      cardSuit: CardSuit.Spades,
      cardType: CardType.Five,
    ),
    6: PlayingCard(
      cardSuit: CardSuit.Spades,
      cardType: CardType.Six,
    ),
    7: PlayingCard(
      cardSuit: CardSuit.Spades,
      cardType: CardType.Seven,
    ),
    8: PlayingCard(
      cardSuit: CardSuit.Spades,
      cardType: CardType.Eight,
    ),
    9: PlayingCard(
      cardSuit: CardSuit.Spades,
      cardType: CardType.Nine,
    ),
    10: PlayingCard(
      cardSuit: CardSuit.Spades,
      cardType: CardType.Ten,
    ),
    11: PlayingCard(
      cardSuit: CardSuit.Spades,
      cardType: CardType.Jack,
    ),
    12: PlayingCard(
      cardSuit: CardSuit.Spades,
      cardType: CardType.Queen,
    ),
    13: PlayingCard(
      cardSuit: CardSuit.Spades,
      cardType: CardType.King,
    ),
    14: PlayingCard(
      cardSuit: CardSuit.Clubs,
      cardType: CardType.One,
    ),
    15: PlayingCard(
      cardSuit: CardSuit.Clubs,
      cardType: CardType.Two,
    ),
    16: PlayingCard(
      cardSuit: CardSuit.Clubs,
      cardType: CardType.Three,
    ),
    17: PlayingCard(
      cardSuit: CardSuit.Clubs,
      cardType: CardType.Four,
    ),
    18: PlayingCard(
      cardSuit: CardSuit.Clubs,
      cardType: CardType.Five,
    ),
    19: PlayingCard(
      cardSuit: CardSuit.Clubs,
      cardType: CardType.Six,
    ),
    20: PlayingCard(
      cardSuit: CardSuit.Clubs,
      cardType: CardType.Seven,
    ),
    21: PlayingCard(
      cardSuit: CardSuit.Clubs,
      cardType: CardType.Eight,
    ),
    22: PlayingCard(
      cardSuit: CardSuit.Clubs,
      cardType: CardType.Nine,
    ),
    23: PlayingCard(
      cardSuit: CardSuit.Clubs,
      cardType: CardType.Ten,
    ),
    24: PlayingCard(
      cardSuit: CardSuit.Clubs,
      cardType: CardType.Jack,
    ),
    25: PlayingCard(
      cardSuit: CardSuit.Clubs,
      cardType: CardType.Queen,
    ),
    26: PlayingCard(
      cardSuit: CardSuit.Clubs,
      cardType: CardType.King,
    ),
    27: PlayingCard(
      cardSuit: CardSuit.Hearts,
      cardType: CardType.One,
    ),
    28: PlayingCard(
      cardSuit: CardSuit.Hearts,
      cardType: CardType.Two,
    ),
    29: PlayingCard(
      cardSuit: CardSuit.Hearts,
      cardType: CardType.Three,
    ),
    30: PlayingCard(
      cardSuit: CardSuit.Hearts,
      cardType: CardType.Four,
    ),
    31: PlayingCard(
      cardSuit: CardSuit.Hearts,
      cardType: CardType.Five,
    ),
    32: PlayingCard(
      cardSuit: CardSuit.Hearts,
      cardType: CardType.Six,
    ),
    33: PlayingCard(
      cardSuit: CardSuit.Hearts,
      cardType: CardType.Seven,
    ),
    34: PlayingCard(
      cardSuit: CardSuit.Hearts,
      cardType: CardType.Eight,
    ),
    35: PlayingCard(
      cardSuit: CardSuit.Hearts,
      cardType: CardType.Nine,
    ),
    36: PlayingCard(
      cardSuit: CardSuit.Hearts,
      cardType: CardType.Ten,
    ),
    37: PlayingCard(
      cardSuit: CardSuit.Hearts,
      cardType: CardType.Jack,
    ),
    38: PlayingCard(
      cardSuit: CardSuit.Hearts,
      cardType: CardType.Queen,
    ),
    39: PlayingCard(
      cardSuit: CardSuit.Hearts,
      cardType: CardType.King,
    ),
    40: PlayingCard(
      cardSuit: CardSuit.Diamonds,
      cardType: CardType.One,
    ),
    41: PlayingCard(
      cardSuit: CardSuit.Diamonds,
      cardType: CardType.Two,
    ),
    42: PlayingCard(
      cardSuit: CardSuit.Diamonds,
      cardType: CardType.Three,
    ),
    43: PlayingCard(
      cardSuit: CardSuit.Diamonds,
      cardType: CardType.Four,
    ),
    44: PlayingCard(
      cardSuit: CardSuit.Diamonds,
      cardType: CardType.Five,
    ),
    45: PlayingCard(
      cardSuit: CardSuit.Diamonds,
      cardType: CardType.Six,
    ),
    46: PlayingCard(
      cardSuit: CardSuit.Diamonds,
      cardType: CardType.Seven,
    ),
    47: PlayingCard(
      cardSuit: CardSuit.Diamonds,
      cardType: CardType.Eight,
    ),
    48: PlayingCard(
      cardSuit: CardSuit.Diamonds,
      cardType: CardType.Nine,
    ),
    49: PlayingCard(
      cardSuit: CardSuit.Diamonds,
      cardType: CardType.Ten,
    ),
    50: PlayingCard(
      cardSuit: CardSuit.Diamonds,
      cardType: CardType.Jack,
    ),
    51: PlayingCard(
      cardSuit: CardSuit.Diamonds,
      cardType: CardType.Queen,
    ),
    52: PlayingCard(
      cardSuit: CardSuit.Diamonds,
      cardType: CardType.King,
    ),
  };
}
